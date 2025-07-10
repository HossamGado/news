import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/views/webview.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (articleModel.url.isNotEmpty) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => Webview(url: articleModel.url),
            ),
          );
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
                fit: BoxFit.cover,
                articleModel.image ?? "assets/stakeholder.jpg"),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            articleModel.title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            articleModel.description ?? "",
            style: const TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
