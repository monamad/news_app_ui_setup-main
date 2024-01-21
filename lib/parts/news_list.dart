import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/new_model.dart';
import 'package:news_app_ui_setup/parts/news_box.dart';

// ignore: must_be_immutable
class NewsList extends StatelessWidget {
  List<NewModel> news;
  NewsList({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: news.length,
        (context, int index) {
          return NewsBox(
            newModel: NewModel(
              image: news[index].image,
              title: news[index].title,
              shortdisc: news[index].shortdisc,
            ),
          );
        },
      ),
    );
  }
}
