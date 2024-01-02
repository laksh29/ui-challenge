import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_challenge/providers/providers.dart';
import 'package:ui_challenge/screens/does_not_exists_screen.dart';
import 'package:ui_challenge/screens/home_screen.dart';

import '../constants/assets_constants.dart';
import '../constants/color_constants.dart';
import '../constants/sizedbox_constants.dart';

class BottomNav extends ConsumerWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(bottomNavIndex);
    final List screens = [
      const HomeScreen(),
      const DoesNotExists(),
      const DoesNotExists(),
      const DoesNotExists(),
    ];
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
      body: screens[count],
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: count,
        onTap: (index) =>
            ref.read(bottomNavIndex.notifier).update((state) => index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Setting",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: "Profile",
          ),
        ],
        selectedItemColor: ColorConstant.primaryColor,
      ),
    );
  }
}
