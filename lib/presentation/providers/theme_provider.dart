import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// listado de colores inmutables usando Provider
final colorListProvider = Provider((ref) => colorList);

// mutable with StateProvider
final isDarkModeProvider = StateProvider<bool>((ref) => true);

final selectedColorProvider = StateProvider((ref) => 0);

// un Objeto de tipo  AppTheme (custom)
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// Controller o NNotifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // State  = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int? colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
