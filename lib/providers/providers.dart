import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavIndex = StateProvider<int>((ref) => 0);

final searchController = StateProvider<String>((ref) => "");

final likeController = StateProvider<List<int>>((ref) => []);
