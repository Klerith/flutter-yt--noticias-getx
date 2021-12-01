import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/articles/controllers/articles_controller.dart';

import 'package:news_app/articles/widgets/widgets.dart';

import 'package:news_app/widgets/widgets.dart';


class HeadlinesScreen extends StatelessWidget {
   

  const HeadlinesScreen({ Key? key }) : super(key: key);
   
   @override
   Widget build(BuildContext context) {

     final primaryColor = Theme.of(context).primaryColor;
      Get.put( ArticlesController() );



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

                Expanded(
                  child: TabBarView(
                    children: [

                      GetBuilder<ArticlesController>(
                        builder: ( _ ) => ArticleList( articles: _.businessArticles ),
                      ),
                      
                      const Icon( Icons.directions_car_filled_outlined ),
                      const Icon( Icons.directions_ferry_rounded ),
                      const Icon( Icons.directions_ferry_outlined ),
                    ],
                  ),
                ),
              ],
            )
        ),
      );
   }
}