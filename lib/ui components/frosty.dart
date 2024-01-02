import 'dart:ui';

import 'package:flutter/material.dart';

class UiFrosty extends StatelessWidget {
  final double blur;
  final Widget? child;
  const UiFrosty({
    Key? key,
    required this.child,
    required this.blur,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blur,
          sigmaY: blur,
          tileMode: TileMode.decal,
        ),
        child: child,
      ),
    );
  }
}
