import 'package:flutter/material.dart';
import 'package:world_news/views/home_screen_view.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Highlights 🚀',
      home: HomeScreenView(),
    );
  }
}
