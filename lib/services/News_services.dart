// ignore_for_file: non_constant_identifier_names, file_names

import 'package:dio/dio.dart';
import 'package:news_app/Models/Article_Model.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=5d024d109427489d916c76732183b414&category=$category');
    Map<String, dynamic> JsonData = response.data;
    List<dynamic> articles = JsonData["articles"];
    List<ArticleModel> articleList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          Subtitle: article['description'],
          url: article['url']);
      articleList.add(articleModel);
    }
    return articleList;
  }
}
