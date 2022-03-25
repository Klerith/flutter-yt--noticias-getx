import 'package:get/get.dart';
import 'package:news_app/articles/models/models.dart';

class ArticlesProvider extends GetConnect {
  @override
  void onInit() {
    print("ArticlesProvides onInit");
  }

  Future<List<Article>> getArticlesByCategory(String category) async {
    final response = await get(
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=a175bc9f91ed4e619b193d244e2e6e4a');
    final newsResponses = NewsResponse.fromMap(response.body);
    return newsResponses.articles;
  }
}
