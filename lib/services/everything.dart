import 'package:dio/dio.dart';
import 'package:world_news/models/news_card_model.dart';

class EverythingNews {
  final dio = Dio();

  Future<List<NewsCardModel>> getAllNews() async {
    try {
      Response response = await dio.get(
          //! YOUR_API_KEY
          'https://newsapi.org/v2/everything?q=gaza&from=2024-02-02&to=2024-02-02&sortBy=popularity&apiKey=YOUR_API_KEY');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<NewsCardModel> newsCardList = [];
      for (var article in articles) {
        NewsCardModel newsCardModel = NewsCardModel.fromJson(article);
        //   NewsCardModel newsCardModel = NewsCardModel(
        //       image: article['urlToImage'],
        //       title: article['title'],
        //       description: article['description']);
        newsCardList.add(newsCardModel);
      }
      return newsCardList;
    } catch (e) {
      rethrow;
    }
  }
}
