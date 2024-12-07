class SearchResult {
  SearchResult({
    this.id,
    this.title,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.voteAverage,
  });

  int? id;
  String? title;
  String? overview;
  String? posterPath;
  String? releaseDate;
  double? voteAverage;

  SearchResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'] ?? json['name']; // For movies/shows
    overview = json['overview'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'] ?? json['first_air_date'];
    voteAverage = json['vote_average']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['overview'] = overview;
    map['poster_path'] = posterPath;
    map['release_date'] = releaseDate;
    map['vote_average'] = voteAverage;
    return map;
  }
}