import 'package:flutter/material.dart';

import 'package:news_app/articles/widgets/widgets.dart';

import 'package:news_app/widgets/widgets.dart';


class HeadlinesScreen extends StatelessWidget {
   

  const HeadlinesScreen({ Key? key }) : super(key: key);
   
   @override
   Widget build(BuildContext context) {

     final primaryColor = Theme.of(context).primaryColor;

      return DefaultTabController(
        length: 4,
        child: Scaffold(
            body: Column(
              children: [
                const CustomAppbar( title: 'Headlines' ),
                
                TabBar(
                  labelColor: primaryColor,
                  unselectedLabelColor: Colors.black38,
                  isScrollable: true,
                  tabs: const [
                    Tab(text: 'Business'),
                    Tab(text: 'Technology'),
                    Tab(text: 'Canada'),
                    Tab(text: 'Word'),
                  ],
                ),

                const Expanded(
                  child: TabBarView(
                    children: [
                      ArticleList(),
                      Icon( Icons.directions_car_filled_outlined ),
                      Icon( Icons.directions_ferry_rounded ),
                      Icon( Icons.directions_ferry_outlined ),
                    ],
                  ),
                ),
              ],
            )
        ),
      );
   }
}