import 'package:flutter/material.dart';
import 'package:world_news/widgets/custom_app_bar.dart';
import 'package:world_news/widgets/drawer_widget.dart';
import 'package:world_news/widgets/news_card_listview_builder.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: DrawerWidget(),
        appBar: PreferredSize(
          preferredSize: Size.square(130),
          child: CustomAppBar(
            title: 'News Highlights 🚀',
            isvisable: true,
          ),
        ),
        body: TabBarView(
          children: [
            NewsCardListViewBuilder(
              category: 'general',
              isEveryThing: false,
            ),
            NewsCardListViewBuilder(
              category: 'general',
              isEveryThing: true,
            ),
          ],
        ),
      ),
    );
  }
}
