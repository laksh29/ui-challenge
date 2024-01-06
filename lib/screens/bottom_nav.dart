import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_challenge/providers/providers.dart';
import 'package:ui_challenge/screens/does_not_exists_screen.dart';
import 'package:ui_challenge/screens/home_screen.dart';

import '../constants/assets_constants.dart';
import '../constants/color_constants.dart';
import '../constants/sizedbox_constants.dart';
import 'favorite_screen.dart';

class BottomNav extends ConsumerWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(bottomNavIndex);
    final List screens = [
      const HomeScreen(),
      const FavoriteScreen(),
      const DoesNotExists(),
      const DoesNotExists(),
    ];
    return Scaffold(
      backgroundColor: ColorConstant.background,
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
      body: screens[count],
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: count,
        onTap: (index) =>
            ref.read(bottomNavIndex.notifier).update((state) => index),
        items: [
          BottomNavigationBarItem(
            icon: count == 0
                ? const Icon(Icons.home_rounded)
                : const Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: count == 1
                ? const Icon(Icons.favorite_rounded)
                : const Icon(Icons.favorite_border_rounded),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: count == 2
                ? const Icon(Icons.settings)
                : const Icon(Icons.settings_outlined),
            label: "Setting",
          ),
          BottomNavigationBarItem(
            icon: count == 3
                ? const Icon(Icons.person)
                : const Icon(Icons.person_outline_rounded),
            label: "Profile",
          ),
        ],
        selectedItemColor: ColorConstant.primaryColor,
      ),
    );
  }
}
