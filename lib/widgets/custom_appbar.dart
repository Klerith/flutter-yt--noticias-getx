part of './widgets.dart';

class CustomAppbar extends StatelessWidget {
  final String title;

  const CustomAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            Text(title,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ])),
    );
  }
}
