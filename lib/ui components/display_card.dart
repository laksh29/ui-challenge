import 'package:flutter/material.dart';
import 'package:ui_challenge/data/popular_properties.dart';

import '../constants/color_constants.dart';
import '../constants/image_links.dart';
import '../constants/sizedbox_constants.dart';
import '../constants/text style/text_style.dart';
import 'frosty.dart';

class DisplayCard extends StatelessWidget {
  const DisplayCard({
    super.key,
    required this.screenWidth,
    required this.index,
  });

  final double screenWidth;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.0,
      child: Stack(children: [
        // background image
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(
                image: NetworkImage(
                  outImages[index],
                ),
                fit: BoxFit.cover),
          ),
        ),
        // frosty and text
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),

            height: 75,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: const Color.fromARGB(66, 126, 122, 122).withOpacity(0.5),
            ),
            // frosty box
            child: UiFrosty(
              blur: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 15.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        // title / name
                        Text(
                          popularProperties.elementAt(index).name,
                          style: UiTextStyle.body.large.copyWith(
                            color: ColorConstant.white,
                          ),
                        ),
                        const Spacer(),
                        // stars
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 3.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: ColorConstant.white,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star_rounded,
                                color: ColorConstant.starYellow,
                                size: 15,
                              ),
                              buildWidth(10),
                              Text(
                                popularProperties
                                    .elementAt(index)
                                    .stars
                                    .toString(),
                                style: UiTextStyle.body.largeRegular,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        // cost per month
                        Text(
                          "\$${popularProperties.elementAt(index).pricePerMonth}/month",
                          style: UiTextStyle.body.mediumRegular.copyWith(
                            color: ColorConstant.white,
                          ),
                        ),
                        const Spacer(),
                        // room meet
                        Text(
                          "${popularProperties.elementAt(index).roomMeet} Room Meet",
                          style: UiTextStyle.body.mediumRegular.copyWith(
                            color: ColorConstant.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
