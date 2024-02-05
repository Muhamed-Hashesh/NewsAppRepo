import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_news/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.isvisable,
  });

  final String title;
  final bool isvisable;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      title: Text(
        title,
        style: mainTextStyle,
      ),
      bottom: isvisable
          ? TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorWeight: 9,
              unselectedLabelColor: defaultTextColor.withOpacity(0.5),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              tabs: [
                  Tab(
                    child: Text(
                      'Everything',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Top Headlines',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(fontSize: 16)),
                    ),
                  ),
                ])
          : null,
      centerTitle: true,
      backgroundColor: primaryColor,
      elevation: 0.5,
      actions: const [
        Padding(
          padding: EdgeInsets.all(24),
          child: Icon(
            Icons.share,
            color: defaultTextColor,
          ),
        )
      ],
    );
  }
}
