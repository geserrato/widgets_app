import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// listado de colores inmutables usando Provider

final colorListProvider = Provider((ref) => colorList);

// mutable with StateProvider
final isDarkModeProvider = StateProvider<bool>((ref) => true);

final selectedColorProvider = StateProvider((ref) => 0);
