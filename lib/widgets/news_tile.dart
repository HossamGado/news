import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
                fit: BoxFit.cover,
                articleModel.image??""),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          articleModel.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
           articleModel.description??"",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15
            ),
          ),
        ],
      );
  }
}
