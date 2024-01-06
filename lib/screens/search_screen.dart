import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_extensions/super_extensions.dart';
import 'package:ui_challenge/providers/providers.dart';

import '../constants/assets_constants.dart';
import '../constants/color_constants.dart';
import '../constants/sizedbox_constants.dart';
import '../constants/text style/text_style.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.background,
        surfaceTintColor: ColorConstant.background,
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
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
                height: 60,
                width: context.screenWidth,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: ColorConstant.white,
                ),
                child: TextFormField(
                  onChanged: (value) =>
                      ref.read(searchController.notifier).state = value,
                  keyboardType: TextInputType.name,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Search here...",
                    hintStyle: UiTextStyle.body.largeRegular.copyWith(
                      color: ColorConstant.lightBlack,
                    ),
                    border: InputBorder.none,
                    suffixIcon: const Icon(
                      Icons.search,
                      color: ColorConstant.lightBlack,
                    ),
                  ),
                )),
            buildHeight(20),
            Center(
              child: ref.watch(searchController) == ""
                  ? null
                  : const Text("No Data Available"),
            ),
          ],
        ),
      ),
    );
  }
}
