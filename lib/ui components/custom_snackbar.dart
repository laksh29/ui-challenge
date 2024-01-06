import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/text style/text_style.dart';

SnackBar customSnackbar(String text) {
  return SnackBar(
      backgroundColor: ColorConstant.secondaryColor,
      content: Text(
        text,
        style: UiTextStyle.body.mediumRegular,
      ));
}
