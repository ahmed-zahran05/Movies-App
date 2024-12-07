class Movie {
  Movie({
    this.id,
    this.title,
    this.overview,
    this.posterPath,
    this.backdropPath,
    this.voteAverage,
    this.releaseDate,
  });

  int? id;
  String? title;
  String? overview;
  String? posterPath;
  String? backdropPath;
  double? voteAverage;
  String? releaseDate;

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
    voteAverage = json['vote_average']?.toDouble();
    releaseDate = json['release_date'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['overview'] = overview;
    map['poster_path'] = posterPath;
    map['backdrop_path'] = backdropPath;
    map['vote_average'] = voteAverage;
    map['release_date'] = releaseDate;
    return map;
  }
}