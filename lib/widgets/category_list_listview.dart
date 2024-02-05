import 'package:flutter/material.dart';
import 'package:world_news/models/categories_model.dart';
import 'package:world_news/widgets/category_list_tile.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categoryList.length,
      itemBuilder: (context, index) {
        return CategoriesListTile(
          categoryModel: categoryList[index],
        );
      },
    );
  }
}
