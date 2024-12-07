import 'Genre.dart';

class MovieDetails {
  MovieDetails({
    this.adult,
    this.backdropPath,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  bool? adult;
  String? backdropPath;
  int? budget;
  List<Genre>? genres;
  String? homepage;
  int? id;
  String? imdbId;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  int? revenue;
  int? runtime;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  MovieDetails.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    budget = json['budget'];
    genres = json['genres'] != null
        ? (json['genres'] as List).map((g) => Genre.fromJson(g)).toList()
        : null;
    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity']?.toDouble();
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    revenue = json['revenue'];
    runtime = json['runtime'];
    status = json['status'];
    tagline = json['tagline'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average']?.toDouble();
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    map['budget'] = budget;
    if (genres != null) {
      map['genres'] = genres?.map((g) => g.toJson()).toList();
    }
    map['homepage'] = homepage;
    map['id'] = id;
    map['imdb_id'] = imdbId;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['popularity'] = popularity;
    map['poster_path'] = posterPath;
    map['release_date'] = releaseDate;
    map['revenue'] = revenue;
    map['runtime'] = runtime;
    map['status'] = status;
    map['tagline'] = tagline;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }
}