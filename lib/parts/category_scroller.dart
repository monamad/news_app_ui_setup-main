import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/categoryboxmodel.dart';
import 'package:news_app_ui_setup/parts/category_box.dart';
import 'package:news_app_ui_setup/services/getdata.dart';

class CategoryScroller extends StatelessWidget {
  CategoryScroller({Key? key}) : super(key: key);
  final List<CategoryBoxModel> categoryBoxModels = [
    CategoryBoxModel(
      image: 'assets/business.avif',
      name: "business",
      ontaped: () {},
    ),
    CategoryBoxModel(
      image: 'assets/sports1.avif',
      name: "entertainment",
      ontaped: () {},
    ),
    CategoryBoxModel(
      image: 'assets/general.avif',
      name: "general",
      ontaped: () {},
    ),
    CategoryBoxModel(
      image: 'assets/business.avif',
      name: "health",
      ontaped: () {},
    ),
    CategoryBoxModel(
      image: 'assets/business.avif',
      name: "technology",
      ontaped: () {},
    ),
    CategoryBoxModel(
      image: 'assets/business.avif',
      name: "science",
      ontaped: () {},
    ),
    CategoryBoxModel(
      image: 'assets/sports1.avif',
      name: "sports",
      ontaped: () {},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SizedBox(
        height: 110,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: categoryBoxModels
              .map((categoryBoxModel) =>
                  CategoryBox(categoryBoxModel: categoryBoxModel))
              .toList(),
        ),
      ),
    );
  }
}
