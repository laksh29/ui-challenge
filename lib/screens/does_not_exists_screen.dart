import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_challenge/constants/color_constants.dart';
import 'package:ui_challenge/constants/text%20style/text_style.dart';

class DoesNotExists extends ConsumerWidget {
  const DoesNotExists({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConstant.background,
      body: Center(
        child: Text(
          "This Page Does Not Exists",
          style: UiTextStyle.title.medium,
        ),
      ),
    );
  }
}
