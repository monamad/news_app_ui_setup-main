import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/new_model.dart';
import 'package:auto_size_text/auto_size_text.dart';

class NewsBox extends StatelessWidget {
  final NewModel newModel;
  const NewsBox({super.key, required this.newModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: (newModel.image != null && newModel.image != '')
                ? Image.network(
                    newModel.image!,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/ass.jpg',
                    fit: BoxFit.cover,
                  ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              newModel.title,
              maxLines: 2,
              overflow: TextOverflow.clip,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              newModel.shortdisc ?? '',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
