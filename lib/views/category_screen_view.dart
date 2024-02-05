import 'package:flutter/material.dart';
import 'package:world_news/widgets/custom_app_bar.dart';
import 'package:world_news/widgets/news_card_listview_builder.dart';

class CategoryScreenView extends StatelessWidget {
  const CategoryScreenView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.square(70),
        child: CustomAppBar(
          title: '$category 🚀', isvisable: false,
        ),
      ),
      body: NewsCardListViewBuilder(
        category: category, isEveryThing: true,
      ),
    );
  }
}
