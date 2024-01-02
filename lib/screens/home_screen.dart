import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_extensions/super_extensions.dart';
import 'package:ui_challenge/constants/color_constants.dart';
import 'package:ui_challenge/constants/sizedbox_constants.dart';

import '../constants/assets_constants.dart';
import '../ui components/banner.dart';
import '../ui components/display_card.dart';
import '../ui components/search_bar.dart';
import '../ui components/title_tile.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = context.screenWidth;
    return Scaffold(
      backgroundColor: ColorConstant.background,
      appBar: AppBar(
        backgroundColor: ColorConstant.background,
        title: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Image(
            image: AssetImage(AssetsConstant.logo),
            height: 25,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_sharp,
                color: ColorConstant.black,
              )),
          buildWidth(25),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            // search bar
            buildHeight(30),
            Searchbar(screenWidth: screenWidth),
            //
            buildHeight(30),
            UiBanner(
              screenWidth: screenWidth,
              title: "Let's buy a house \nhere",
              subTitle: "Diskon 10%",
              date: "12 October 2022",
            ),
            // popular today
            buildHeight(30),
            UiTitleTile(
              title: "Popular Today",
              subTitle: "Others",
              onTap: () {},
            ),
            // popular display cards
            buildHeight(15),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) => DisplayCard(
                screenWidth: screenWidth,
                index: index,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
