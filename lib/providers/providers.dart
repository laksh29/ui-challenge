import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavIndex = StateProvider<int>((ref) => 0);

final heartPressed = StateProvider<bool>((ref) => false);

final searchController = StateProvider<String>((ref) => "");
