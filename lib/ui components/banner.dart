import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/image_links.dart';
import '../constants/text style/text_style.dart';

class UiBanner extends StatelessWidget {
  const UiBanner({
    super.key,
    required this.screenWidth,
    required this.title,
    this.subTitle,
    this.date,
  });

  final double screenWidth;
  final String title;
  final String? subTitle;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.14,
      child: Stack(children: [
        // background image
        Container(
          width: screenWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: NetworkImage(
                    outImages[3],
                  ),
                  fit: BoxFit.cover)),
        ),
        // overlay and text
        Container(
          padding: const EdgeInsets.all(15),
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: ColorConstant.black.withOpacity(0.6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: UiTextStyle.title.large
                    .copyWith(color: ColorConstant.white),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    subTitle!,
                    style: UiTextStyle.title.smallRegular
                        .copyWith(color: ColorConstant.grey),
                  ),
                  const Spacer(),
                  Text(
                    date!,
                    style: UiTextStyle.title.smallRegular
                        .copyWith(color: ColorConstant.grey),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
