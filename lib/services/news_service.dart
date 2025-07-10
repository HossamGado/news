import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=e38e4dde532640869fc8dba0c83a3e7c&country=us&category=$category");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<ArticleModel> articleList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article["urlToImage"],
          title: article["title"],
          description: article["description"],
        url:article["url"],
      );
      articleList.add(articleModel);
    }
    return articleList;
    }catch(e){
      return[];
    }
  }
}
