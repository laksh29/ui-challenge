import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_challenge/constants/color_constants.dart';

class CustomAlert extends ConsumerWidget {
  const CustomAlert({
    super.key,
    required this.content,
  });

  final Widget content;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.close,
                color: ColorConstant.black,
              ))
        ],
      ),
      content: content,
    );
  }
}
