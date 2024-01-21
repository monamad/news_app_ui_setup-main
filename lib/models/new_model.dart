class NewModel {
  final String? image;
  final String title;
  final String? shortdisc;
  const NewModel(
      {required this.image, required this.shortdisc, required this.title});

  factory NewModel.fromjson(article) {
    return NewModel(
        image: article["urlToImage"],
        shortdisc: article["description"],
        title: article["title"]);
  }
}
