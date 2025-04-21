import 'package:flutter/material.dart';
import 'package:news/widgets/news_list_view.dart';
import 'package:news/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title:const Row(
          mainAxisSize: MainAxisSize.min,
         children: [
           Text("News",style: TextStyle(
             fontWeight: FontWeight.bold
           ),),
           Text("Cloud",style: TextStyle(
             color: Colors.orange,
             fontWeight: FontWeight.bold
           ),),
         ],
        ),
      ),
      body: NewsListView(),
    );
  }
}
