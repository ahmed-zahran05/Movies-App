import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_app/Common/Result/Result.dart';
import 'package:movies_app/Data/Models/MoreLikeThis/MoreLikeThis.dart';
import 'package:movies_app/Data/Models/Movie_Details/Details.dart';
import 'package:movies_app/Data/Models/NewReleases/NewReleases.dart';
import 'package:movies_app/Data/Models/Popular/Popular.dart';
import 'package:movies_app/Data/Models/Search/SearchResults.dart';



class ApiManager {
  static const baseUrl = "api.themoviedb.org";
  static const apiKey = "429aaacbfc43506e4d23433a2b3afeed";
  static const popularEndPoint = "/3/movie/popular";
  static const recommendedEndPoint = "/3/movie/top_rated";
  static const newReleaseEndPoint = "/3/movie/upcoming";

  static Future<Result<PopularMovie>> getPopularMovies({int page = 1}) async {
    Uri url = Uri.https(
        baseUrl,
        popularEndPoint, {
      'api_key': apiKey,
      'language': 'en-US',
      'page': page.toString(),
    });

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        PopularMovie popularMovie = PopularMovie.fromJson(json);
        return Success(data: popularMovie);
      } else {
        return ServerError(
          code: response.statusCode.toString(),
          message: response.reasonPhrase ?? 'Unknown error',
        );
      }
    } catch (e) {
      return Error(exception: Exception(e));
    }
  }
  static Future<Result<PopularMovie>> getTopRatedMovies({int page = 1}) async {
    Uri url = Uri.https(baseUrl, recommendedEndPoint, {
      'api_key': apiKey,
      'language': 'en-US',
      'page': page.toString(),
    });

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        PopularMovie topRatedMovie = PopularMovie.fromJson(json);
        return Success(data: topRatedMovie);
      } else {
        return ServerError(
          code: response.statusCode.toString(),
          message: response.reasonPhrase ?? 'Unknown error',
        );
      }
    } catch (e) {
      return Error(exception: Exception(e));
    }
  }
  static Future<Result<NewReleases>> getUpcomingMovies({int page = 1}) async {
    Uri url = Uri.https(baseUrl, newReleaseEndPoint, {
      'api_key': apiKey,
      'language': 'en-US',
      'page': page.toString(),
    });

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        NewReleases newReleases = NewReleases.fromJson(json);
        return Success(data: newReleases);
      } else {
        return ServerError(
          code: response.statusCode.toString(),
          message: response.reasonPhrase ?? 'Unknown error',
        );
      }
    } catch (e) {
      return Error(exception: Exception(e));
    }
  }
  static Future<Result<MovieDetails>> getMovieDetails(int movieId) async {
    Uri url = Uri.https(
      baseUrl,
      "/3/movie/$movieId",
      {
        'api_key': apiKey,
        'language': 'en-US',
      },
    );

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        MovieDetails movieDetails = MovieDetails.fromJson(jsonData);
        return Success(data: movieDetails);
      } else {
        return ServerError(
          code: response.statusCode.toString(),
          message: response.reasonPhrase ?? 'Unknown error',
        );
      }
    } catch (e) {
      return Error(exception: Exception(e));
    }
  }
  static Future<Result<MoreLikeThis>> getMoreLikeThis(int movieId) async {
    Uri url = Uri.https(
      baseUrl,
      "/3/movie/$movieId/similar",
      {
        'api_key': apiKey,
        'language': 'en-US',
        'page': '1',
      },
    );

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        MoreLikeThis moreLikeThis = MoreLikeThis.fromJson(jsonData);
        return Success(data: moreLikeThis);
      } else {
        return ServerError(
          code: response.statusCode.toString(),
          message: response.reasonPhrase ?? 'Unknown error',
        );
      }
    } catch (e) {
      return Error(exception: Exception(e));
    }
  }
  static Future<Result<SearchResults>> searchMovies(String query, int page) async {
    Uri url = Uri.https(
      baseUrl,
      "/3/search/movie",
      {
        'api_key': apiKey,
        'language': 'en-US',
        'query': query,
        'page': page.toString(),
        'include_adult': 'false',
      },
    );

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        SearchResults searchResults = SearchResults.fromJson(jsonData);
        return Success(data: searchResults);
      } else {
        return ServerError(
          code: response.statusCode.toString(),
          message: response.reasonPhrase ?? 'Unknown error',
        );
      }
    } catch (e) {
      return Error(exception: Exception(e));
    }
  }
}

