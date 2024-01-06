import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_extensions/super_extensions.dart';
import 'package:ui_challenge/providers/providers.dart';

import '../constants/text style/text_style.dart';
import '../ui components/display_card.dart';

class FavoriteScreen extends ConsumerWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ref.watch(likeController).isEmpty
          ? Center(
              child: Text(
                "You have liked no Properties!",
                style: UiTextStyle.title.medium,
              ),
            )
          : Column(
              children: [
                ListView.builder(
                  itemCount: ref.watch(likeController).length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return DisplayCard(
                      screenWidth: context.screenWidth,
                      index: ref.watch(likeController)[index],
                    );
                  },
                )
              ],
            ),
    );
  }
}
