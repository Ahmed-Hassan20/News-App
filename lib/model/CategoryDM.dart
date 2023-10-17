import 'package:flutter/material.dart';
import 'package:news/my_theme.dart';

class CategoryDM {
  String id;
  String title;
  String image;
  Color color;
  CategoryDM(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
///business entertainment general health science sports technology
  static List<CategoryDM> getCategories() {
    return [
      CategoryDM(id: 'sports', title: 'Sports', image: 'assets/ball.png', color: mytheme.red),
      CategoryDM(id: 'general', title: 'General', image: 'assets/environment.png', color: mytheme.lightblue),
      CategoryDM(id: 'health', title: 'Health', image: 'assets/health.png', color: mytheme.pink),
      CategoryDM(id: 'business', title: 'business', image: 'assets/business.png', color: mytheme.brown),
      CategoryDM(id: 'entertainment', title: 'Entertainment', image: 'assets/Politics.png', color: mytheme.darkblue),
      CategoryDM(id: 'science', title: 'Science', image: 'assets/science.png', color: mytheme.yellow),

    ];
  }
}
