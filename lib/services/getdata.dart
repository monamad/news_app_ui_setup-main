import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/new_model.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://newsapi.org/v2',
  ),
);

class Getnews {
  Future<List<NewModel>> getcategorynews({required String category}) async {
    try {
      // Make the GET request
      final response = await dio.get(
          '/everything?q=$category&apiKey=5f41b7b9c4a743e99c273790c6bbd727');

      if (response.statusCode == 200) {
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
      List<dynamic> result = response.data['articles'];
      List<NewModel> newsModel =
          result.map((article) => NewModel.fromjson(article)).toList();
      return newsModel;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return [];
    }
  }
}
