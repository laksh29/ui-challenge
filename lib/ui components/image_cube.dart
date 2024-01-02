import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/image_links.dart';
import '../constants/text style/text_style.dart';

class ImageCube extends StatelessWidget {
  const ImageCube({
    super.key,
    required this.index,
    this.imageCount,
  });

  final int index;
  final int? imageCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: NetworkImage(
            interiorImages[index],
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: imageCount == null || imageCount == 0
          ? null
          : Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: ColorConstant.black.withOpacity(0.5),
              ),
              child: Center(
                child: Text(
                  "+$imageCount",
                  style: UiTextStyle.title.large.copyWith(
                    color: ColorConstant.white,
                  ),
                ),
              ),
            ),
    );
  }
}
