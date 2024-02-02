import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/new_model.dart';
import 'package:news_app_ui_setup/parts/news_list.dart';
import 'package:news_app_ui_setup/services/getdata.dart';

class NewsListbuilder extends StatefulWidget {
  final String category;
  const NewsListbuilder({super.key, required this.category});
  @override
  State<NewsListbuilder> createState() => _NewsListbuilderState();
}

class _NewsListbuilderState extends State<NewsListbuilder> {
  var future;
  @override
  void initState() {
    future = Getnews().getcategorynews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsList(news: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                "Some Dummy Text",
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
