import 'package:flutter/material.dart';

class CategoryModel {
  final String categoryName;
  final IconData icon;

  CategoryModel({required this.categoryName, required this.icon});
}

List<CategoryModel> categoryList = [
  CategoryModel(
    categoryName: 'Business',
    icon: Icons.business_center_rounded,
  ),
  CategoryModel(
    categoryName: 'Entertainment',
    icon: Icons.flash_on_rounded,
  ),
  CategoryModel(
    categoryName: 'Health',
    icon: Icons.favorite_rounded,
  ),
  CategoryModel(
    categoryName: 'Science',
    icon: Icons.science,
  ),
  CategoryModel(
    categoryName: 'Sports',
    icon: Icons.sports_esports_rounded,
  ),
  CategoryModel(
    categoryName: 'Technology',
    icon: Icons.developer_board_outlined,
  ),
];
