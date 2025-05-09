import 'package:flutter/material.dart';
import 'package:news/models/listView_model.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.model});
  final ListViewModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 200,
        height: 100,
        child: Container(
          child: Center(
              child: Text(
            model.text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(model.image)),
        ),
      ),
    );
  }
}
