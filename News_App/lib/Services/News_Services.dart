import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/Models/NewsTile_Model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<NewsTileModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=d34cea65dab74af7a4e339354589910e&category=${category}');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsTileModel> newsList = [];
      for (var article in articles) {
        NewsTileModel newsTileModel = NewsTileModel(
            newsTileImage: article['urlToImage'],
            newsTileSubTitle: article['title'],
            newsTileTitle: article['description']);
        newsList.add(newsTileModel);
      }
      return newsList;
    } on Exception catch (e) {
      return [];
    }
  }
}
