import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_extensions/super_extensions.dart';
import 'package:ui_challenge/providers/providers.dart';

import '../ui components/display_card.dart';

class FavoriteScreen extends ConsumerWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView(
        children: [
          ref.watch(likeController).isEmpty
              ? const Center(
                  child: Text("No Favorite Properties!"),
                )
              : ListView.builder(
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
