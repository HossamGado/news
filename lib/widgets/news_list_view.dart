import 'package:flutter/material.dart';
import 'package:news/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: NewsTile(),
          );
        },
      ),
    );
  }
}
