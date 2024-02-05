class NewsCardModel {
  final String? image;
  final String title;
  final String? description;

  NewsCardModel({
    required this.image,
    required this.title,
    required this.description,
  });

  factory NewsCardModel.fromJson(json) {
    return NewsCardModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
    );
  }

  // NewsCardModel.fromJson(json) {
  //   this.image = json['UrlToimage'];
  //   this.title = json['title'];
  //   this.description = json['description'];
  // }
}
