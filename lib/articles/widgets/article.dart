part of 'widgets.dart';


class ArticleCard extends StatelessWidget {
  
  final Article article;

  const ArticleCard({
    Key? key, 
    required this.article
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _ArticleImage(url: 'https://picsum.photos/seed/picsum/500/300'),
        _ArticleSourceAndTitle( source: article.source.name , title: article.title ),
        const _ArticleDescription( description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),

        const SizedBox( height: 10 ),
        const Divider(),
        const SizedBox( height: 20 ),
      ],
    );
  }
}

class _ArticleDescription extends StatelessWidget {

  final String description;

  const _ArticleDescription({
    Key? key, 
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      child: Text( description ),
    );
  }
}

class _ArticleSourceAndTitle extends StatelessWidget {

  final String source;
  final String title;

  const _ArticleSourceAndTitle({
    Key? key, 
    required this.source, 
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text( 
            source, 
            style: const TextStyle( fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blueAccent ),
          ),
          Text( title, style: const TextStyle( fontSize: 16, fontWeight: FontWeight.w600 ) ),
        ],
      )
    );
  }
}


class _ArticleImage extends StatelessWidget {

  final String url;

  const _ArticleImage({
    Key? key, 
    required this.url
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all( Radius.circular(10) ),
      child: FadeInImage(
        fit: BoxFit.cover,
        width: double.infinity,
        height: 200,
        placeholder: const AssetImage('assets/loading.gif'),
        image: NetworkImage( url ),
      )
    );
  }
}