import 'package:flutter/material.dart';
import 'package:news/models/listView_model.dart';
import 'package:news/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final  List<ListViewModel> listModel = const [
    ListViewModel(
        image: "assets/technology.jpeg", text: "Technology"),
    ListViewModel(
        image: "assets/health.jpeg", text: "Health"),
    ListViewModel(
        image: "assets/entertainment.jpg", text: "Entertainment"),
    ListViewModel(
        image: "assets/science.jpeg", text: "Science"),
    ListViewModel(
        image: "assets/business.jpeg", text: "Business"),
    ListViewModel(
        image: "assets/sports.jpg", text: "Sports"),
    ListViewModel(
        image: "assets/general.jpeg", text: "General"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listModel.length,
          itemBuilder: (context, index){
            return CategoryCard(model: listModel[index],);
          }),
    );
  }
}
