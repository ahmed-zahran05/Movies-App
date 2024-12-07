import 'SearchResult.dart';

class SearchResults {
  SearchResults({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  int? page;
  List<SearchResult>? results;
  int? totalPages;
  int? totalResults;

  SearchResults.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = (json['results'] as List)
          .map((item) => SearchResult.fromJson(item))
          .toList();
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    map['results'] = results?.map((item) => item.toJson()).toList();
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }
}