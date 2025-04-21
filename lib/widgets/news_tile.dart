import 'package:flutter/material.dart';
class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
                fit: BoxFit.cover,
                "https://media.mehrnews.com/d/2025/04/20/3/5468603.jpg?ts=1745136413787"),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            "TEHRAN, Apr. 20 (MNA) – French President Emmanuel Macron invited scientists from all over the world to come work in France or Europe, as US President Donald Trump's new administration has started slashing funding for universities and research bodies.",
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
            "Macron did not mention the US, where hundreds of scientists have been dismissed in cutbacks to research that come amid a broader clash between Trump and Ivy League universities, France 24 reported.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15
            ),
          ),
        ],
      );
  }
}
