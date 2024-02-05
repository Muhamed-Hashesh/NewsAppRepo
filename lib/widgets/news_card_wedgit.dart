import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/models/news_card_model.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    super.key,
    required this.newsCardModel,
  });

  final NewsCardModel newsCardModel;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        children: [
          Container(
            // margin: const EdgeInsets.symmetric(horizontal: 24),
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(newsCardModel.image ??
                    'https://user-images.githubusercontent.com/24848110/33519396-7e56363c-d79d-11e7-969b-09782f5ccbab.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Text(
            newsCardModel.title,
            style: mainTextStyle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            newsCardModel.description ?? '',
            style: secTextStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
