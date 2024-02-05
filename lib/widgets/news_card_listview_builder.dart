import 'package:flutter/material.dart';
import 'package:world_news/models/news_card_model.dart';
import 'package:world_news/services/everything.dart';
import 'package:world_news/services/topheadlines.dart';
import 'package:world_news/widgets/news_card_listview.dart';

class NewsCardListViewBuilder extends StatefulWidget {
  const NewsCardListViewBuilder({
    super.key,
    required this.category,
    required this.isEveryThing,
  });
  final String category;
  final bool isEveryThing;

  @override
  State<NewsCardListViewBuilder> createState() =>
      _NewsCardListViewBuilderState();
}

class _NewsCardListViewBuilderState extends State<NewsCardListViewBuilder> {
  dynamic future;
  @override
  void initState() {
    super.initState();
    future = widget.isEveryThing
        ? TopHeadlinesNews().getTopHeadlines(category: widget.category)
        : EverythingNews().getAllNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsCardModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsCardListView(
              article: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text(
                'Oops, Something went wrong 😖',
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}



// class NewsCardListViewBuilder extends StatefulWidget {
//   const NewsCardListViewBuilder({
//     super.key, required this.category,
//   });
//   final String category;

//   @override
//   State<NewsCardListViewBuilder> createState() =>
//       _NewsCardListViewBuilderState();
// }

// class _NewsCardListViewBuilderState extends State<NewsCardListViewBuilder> {
//   List<NewsCardModel> article = [];
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     getTopHeadlineNews();
//   }

//   Future<void> getTopHeadlineNews() async {
//     article = await TopHeadlinesNews().getTopHeadlines(category: widget.category);
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const Center(
//             child: CircularProgressIndicator(),
//           ):
//         // : const Center(
//         //     child: Text(
//         //       'Oops, Something went wrong 😖',
//         //     ),
//         //   );
//      NewsCardListView(
//         article: article,
//       );
//   }
// }
