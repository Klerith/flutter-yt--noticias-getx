import 'package:get/get.dart';
import 'package:news_app/articles/models/models.dart';
import 'package:news_app/articles/providers/articles_provider.dart';

class ArticlesController extends GetxController {
  final businessArticles = <Article>[];
  final articlesProvider = Get.find<ArticlesProvider>();

  ArticlesController() {
    print('Articles controller');
    getArticlesByCategory('business');
  }

  Future getArticlesByCategory(String category) async {
    final articles = await articlesProvider.getArticlesByCategory(category);
    businessArticles.addAll(articles);
    update();
  }
}
