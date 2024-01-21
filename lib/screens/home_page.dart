import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/helper/newsbuilder.dart';
import 'package:news_app_ui_setup/parts/category_scroller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('News'),
              Text('could', style: TextStyle(color: Colors.orange)),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryScroller(),
            ),
            NewsListbuilder(
              category: 'general',
            )
          ],
        )
        // Column(children: [
        //   Padding(
        //     padding: const EdgeInsets.only(bottom: 12),
        //     child: SizedBox(height: 110, child: CategoryScroller()),
        //   ),
        //   const Expanded(child: NewsList())
        // ]),
        );
  }
}
