part of 'widgets.dart';

class ArticleList extends StatelessWidget {

  const ArticleList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: ( _, i ) => const ArticleCard(),
      ),
    );
  }
}

