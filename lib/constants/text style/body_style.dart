import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/constants/color_constants.dart';

class BodyStyle {
  const BodyStyle();

  TextStyle fromString(String s) {
    switch (s) {
      case 'large':
        return large;
      case 'largeRegular':
        return largeRegular;
      case 'mediumRegular':
        return mediumRegular;
      case 'small':
        return small;
      case 'smallRegular':
        return smallRegular;
      case 'medium':
      default:
        return medium;
    }
  }

  //large bold
  TextStyle get large => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        height: 1.5,
        color: ColorConstant.black,
      );

  //large regular
  TextStyle get largeRegular => GoogleFonts.poppins(
        fontSize: 14,
        height: 1.5,
        color: ColorConstant.black,
      );

  // medium bold
  TextStyle get medium => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        height: 1.2,
        color: ColorConstant.black,
      );

  // medium regular
  TextStyle get mediumRegular => GoogleFonts.poppins(
        fontSize: 12,
        height: 1.2,
        color: ColorConstant.black,
      );

  // small bold
  TextStyle get small => GoogleFonts.poppins(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        height: 1.3,
        color: ColorConstant.black,
      );

  // small regular
  TextStyle get smallRegular => GoogleFonts.poppins(
        fontSize: 11,
        height: 1.3,
        color: ColorConstant.black,
      );
}
