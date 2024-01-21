import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart' as av;
import 'package:news_app_ui_setup/models/categoryboxmodel.dart';
import 'package:news_app_ui_setup/screens/catagoryview.dart';

// ignore: must_be_immutable
class CategoryBox extends StatelessWidget {
  CategoryBoxModel categoryBoxModel;
  CategoryBox({super.key, required this.categoryBoxModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Categoryview(
              category: categoryBoxModel.name,
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: av.AssetAvifImage(categoryBoxModel.image),
            ),
          ),
          width: 150,
          child: Center(
            child: Text(
              categoryBoxModel.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
