import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/text%20style/text_style.dart';

import '../constants/color_constants.dart';
import '../screens/search_screen.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SearchScreen(),
          )),
      child: Container(
        width: screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: ColorConstant.white,
        ),
        child: Row(
          children: [
            Text(
              "Search Here...",
              style: UiTextStyle.body.largeRegular.copyWith(
                color: ColorConstant.lightBlack,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.search,
              color: ColorConstant.lightBlack,
            ),
          ],
        ),
      ),
    );
  }
}
