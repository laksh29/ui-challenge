import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_challenge/data/popular_properties.dart';

final bottomNavIndex = StateProvider<int>((ref) => 0);

final heartPressed = StateProvider<List<bool>>(
    (ref) => List.generate(popularProperties.length, (index) => false));

final searchController = StateProvider<String>((ref) => "");

final likeController = StateProvider<List<int>>((ref) => []);
