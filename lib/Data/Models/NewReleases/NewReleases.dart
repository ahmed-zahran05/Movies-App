import 'package:movies_app/Data/Models/Popular/Results.dart';
import 'Dates.dart';

class NewReleases {
  NewReleases({
      this.dates, 
      this.page, 
      this.results, 
      this.totalPages, 
      this.totalResults
    ,});

  Dates? dates;
  num? page;
  List<Results>? results;
  num? totalPages;
  num? totalResults;


  NewReleases.fromJson(dynamic json) {
    dates = json['dates'] != null ? Dates.fromJson(json['dates']) : null;
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (dates != null) {
      map['dates'] = dates?.toJson();
    }
    map['page'] = page;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }

}