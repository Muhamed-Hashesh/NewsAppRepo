import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/widgets/category_list_listview.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: primaryColor,
            ),
            accountName: Text(
              'News Highlights 🚀',
              style: mainTextStyle,
            ),
            accountEmail: Text(
              'Follow the news, don\'t be the last to know',
              style: secTextStyle,
              maxLines: 2,
            ),
          ),
          SafeArea(
            child: Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: const ExpansionTile(
                initiallyExpanded: true,
                title: Text(
                  'Top Headlines',
                  style: TextStyle(color: defaultTextColor),
                ),
                iconColor: defaultTextColor,
                leading: Icon(Icons.now_widgets_rounded),
                expandedAlignment: Alignment.center,
                childrenPadding: EdgeInsets.only(left: 50),
                children: [
                  CategoriesListView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
