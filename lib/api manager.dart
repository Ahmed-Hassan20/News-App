import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api%20constants.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourceResponse.dart';

class ApiManager {
  static Future<SourceResponse> getSources(String categoryID) async {
    ///https://newsapi.org/v2/top-headlines/sources?apiKey=d3732f2555584d508851a500a83f5fc7
    Uri url = Uri.https(ApiConstants.baseurl, ApiConstants.sourceApi,
        {'apiKey': 'd3732f2555584d508851a500a83f5fc7',
        'category':categoryID});

    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return SourceResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  static Future<NewsResponse> getNewsBySourceId(String sourceId) async {
    ///https://newsapi.org/v2/everything?q=bitcoin&apiKey=d3732f2555584d508851a500a83f5fc7

    Uri url = Uri.https(ApiConstants.baseurl, ApiConstants.newsApi,
        {'apiKey': 'd3732f2555584d508851a500a83f5fc7', 'sources': sourceId});
    http.get(url);
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return NewsResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
