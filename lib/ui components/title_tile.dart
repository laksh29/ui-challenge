import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/text style/text_style.dart';

class UiTitleTile extends StatelessWidget {
  const UiTitleTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  final String title;
  final String subTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: UiTextStyle.title.large,
        ),
        const Spacer(),
        InkWell(
          onTap: onTap,
          child: Text(
            subTitle,
            style: UiTextStyle.title.small.copyWith(
              color: ColorConstant.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: ColorConstant.primaryColor,
        )
      ],
    );
  }
}
