import 'dart:convert';

import 'package:flutterMVCAPI/models/news.dart';
import 'package:http/http.dart' as http;

class NewsAPI {
  Future<NewsModel> getNEws() async {
    try {
      http.Response response = await http.get(
          "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey");

      var newsmodel = null;

      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        newsmodel = NewsModel.fromJson(jsonData);
      }
      return newsmodel;
    } catch (e) {
      print(e);
    }
  }
}
