import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readmore/readmore.dart';
import 'package:super_extensions/super_extensions.dart';
import 'package:ui_challenge/constants/text%20style/text_style.dart';
import 'package:ui_challenge/data/popular_properties.dart';
import 'package:ui_challenge/providers/providers.dart';

import '../constants/color_constants.dart';
import '../constants/image_links.dart';
import '../constants/sizedbox_constants.dart';
import '../ui components/image_cube.dart';

class DetailsScreen extends ConsumerWidget {
  const DetailsScreen({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            // background image
            Container(
              width: context.screenWidth,
              height: 430,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    outImages[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // black overlay
            Positioned(
              top: 430 / 2,
              child: Container(
                height: 430 / 2,
                width: context.screenWidth,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorConstant.black.withOpacity(0.7),
                      ColorConstant.black.withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                ),
              ),
            ),
            // on leading - back arrow
            Positioned(
                top: 15,
                left: 30,
                child: CircleAvatar(
                  backgroundColor: ColorConstant.white,
                  radius: 20,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 20,
                      )),
                )), //
            // interior images
            Positioned(
                right: 25,
                bottom: 25,
                child: Column(
                  children: [
                    ImageCube(index: index + 1),
                    buildHeight(10),
                    ImageCube(index: index + 2),
                    buildHeight(10),
                    ImageCube(
                      index: index + 3,
                      imageCount: popularProperties
                              .elementAt(index)
                              .interiorImage
                              .length -
                          2,
                    ),
                  ],
                ))
          ]),
          buildHeight(30),
          // stars
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RatingBar(
              initialRating: popularProperties.elementAt(index).stars,
              itemSize: 20,
              direction: Axis.horizontal,
              allowHalfRating: false,
              ignoreGestures: true,
              itemCount: 5,
              ratingWidget: RatingWidget(
                full: const Icon(
                  Icons.star_rounded,
                  color: ColorConstant.secondaryColor,
                ),
                half: const Icon(
                  Icons.star_half_rounded,
                  color: ColorConstant.secondaryColor,
                ),
                empty: const Icon(
                  Icons.star_rounded,
                  color: ColorConstant.starYellow,
                ),
              ),
              onRatingUpdate: (rating) {},
            ),
          ),
          buildHeight(15),
          // title/name and like button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                // title/name
                Text(
                  popularProperties.elementAt(index).name,
                  style: UiTextStyle.heading.small,
                ),
                const Spacer(),
                // like button
                IconButton(
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      if (ref.watch(heartPressed)[index]) {
                        ref.read(heartPressed.notifier).update((state) {
                          state[index] = false;
                          return state;
                        });

                        ref.read(likeController.notifier).update((state) => [
                              for (int x in state)
                                if (x != index) x
                            ]);
                      } else {
                        ref.read(heartPressed.notifier).update((state) {
                          state[index] = true;
                          return state = state;
                        });

                        ref
                            .read(likeController.notifier)
                            .update((state) => [...state, index]);
                      }
                    },
                    icon: ref.watch(likeController).contains(index)
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border,
                          ))
              ],
            ),
          ),
          buildHeight(30),
          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Description",
              style: UiTextStyle.title.large.copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          buildHeight(15),
          // description
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ReadMoreText(
                popularProperties.elementAt(index).description,
                style: UiTextStyle.title.smallRegular.copyWith(
                  color: ColorConstant.lightBlack,
                ),
                trimExpandedText: "Read Less",
                trimCollapsedText: "Read More",
                trimLength: 120,
                moreStyle: UiTextStyle.title.smallRegular.copyWith(
                  color: Colors.cyan,
                ),
                lessStyle: UiTextStyle.title.smallRegular.copyWith(
                  color: Colors.cyan,
                ),
                delimiter: "",
              )),
          buildHeight(20),
          // map
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 150,
              width: context.screenWidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                  popularProperties.elementAt(index).mapImage,
                ),
                fit: BoxFit.cover,
              )),
            ),
          ),
          buildHeight(30),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: UiTextStyle.title.mediumRegular,
                ),
                Text(
                  "\$ ${popularProperties.elementAt(index).pricePerMonth}",
                  style: UiTextStyle.heading.medium,
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  shadowColor: Colors.transparent,
                  backgroundColor: ColorConstant.primaryColor,
                ),
                onPressed: () {},
                child: Text(
                  "Pay Now",
                  style: UiTextStyle.title.medium.copyWith(
                    color: ColorConstant.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
