import 'Movie.dart';

class MoreLikeThis {
  MoreLikeThis({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  int? page;
  List<Movie>? results;
  int? totalPages;
  int? totalResults;

  MoreLikeThis.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = (json['results'] as List)
          .map((movieJson) => Movie.fromJson(movieJson))
          .toList();
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    map['results'] = results?.map((movie) => movie.toJson()).toList();
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }
}