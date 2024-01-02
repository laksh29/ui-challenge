import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_challenge/constants/assets_constants.dart';
import 'package:ui_challenge/constants/color_constants.dart';
import 'package:ui_challenge/constants/sizedbox_constants.dart';
import 'package:ui_challenge/constants/text%20style/text_style.dart';
import 'package:ui_challenge/screens/home_screen.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorConstant.background,
      appBar: AppBar(
        backgroundColor: ColorConstant.background,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Image(
            image: AssetImage(AssetsConstant.logo),
            height: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            buildHeight(40),
            RichText(
              text: TextSpan(
                  text: "Looking ",
                  style: UiTextStyle.display.small.copyWith(
                    color: ColorConstant.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "for an ",
                      style: UiTextStyle.display.small.copyWith(
                        color: ColorConstant.secondaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: "elegent house this is the place",
                      style: UiTextStyle.display.small.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ]),
            ),
            // 2nd text
            buildHeight(20),
            Text(
              "Welcome friends are you looking \nfor us?",
              style: UiTextStyle.title.largeRegular.copyWith(
                color: ColorConstant.lightBlack,
              ),
            ),
            // 3rd text
            buildHeight(10),
            Text(
              "Congratulations you have found us",
              style: UiTextStyle.title.largeRegular.copyWith(
                color: ColorConstant.lightBlack,
              ),
            ),
            // Next Button
            buildHeight(25),
            InkWell(
              onTap: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
                (route) => false,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // cta text
                    Text("Next",
                        style: UiTextStyle.heading.extraSmall.copyWith(
                          color: ColorConstant.white,
                        )),
                    buildWidth(8),
                    // arrow icon
                    const Image(image: AssetImage(AssetsConstant.arrow))
                  ],
                ),
              ),
            ),
            // Images
            const Spacer(),
            const Image(
              image: AssetImage(AssetsConstant.onboardingScreenImg),
              fit: BoxFit.fitWidth,
            )
          ],
        ),
      ),
    );
  }
}
