import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle mainTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 20,
    color: defaultTextColor,
  ),
);
TextStyle secTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontSize: 16,
    color: defaultTextColor.withOpacity(0.5),
  ),
);

const Color primaryColor = Color(0xff6a7372);
const Color secondaryColor = Color(0xff7a5c42);
const Color defaultTextColor = Color(0xff111015);
