import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/helper/newsbuilder.dart';

class Categoryview extends StatelessWidget {
  final String category;
  const Categoryview({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          children: [
            Text('News'),
            Text('cloud', style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: CustomScrollView(slivers: [
        NewsListbuilder(
          category: category,
        ),
      ]),
    );
  }
}
