import 'package:flutter/material.dart';
import 'package:world_news/constants.dart';
import 'package:world_news/models/categories_model.dart';
import 'package:world_news/views/category_screen_view.dart';

class CategoriesListTile extends StatelessWidget {
  const CategoriesListTile({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        categoryModel.categoryName,
        style: const TextStyle(color: secondaryColor),
      ),
      leading: Icon(categoryModel.icon, color: secondaryColor),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreenView(
                category: categoryModel.categoryName,
              );
            },
          ),
        );
      },
    );
  }
}
