import 'package:flutter/material.dart';
import 'package:world_news/models/news_card_model.dart';
import 'package:world_news/widgets/news_card_wedgit.dart';

class NewsCardListView extends StatelessWidget {
  final List<NewsCardModel> article;
  const NewsCardListView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: article.length,
      itemBuilder: (context, index) {
        return NewsCardWidget(
          newsCardModel: article[index],
        );
      },
    );
  }
}
