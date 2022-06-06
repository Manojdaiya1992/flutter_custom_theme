import 'package:custom_themes/themes/custom_themes.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  int _selectedThemeIndex = 0;
  ThemeData _theme = ThemeData.light();

  int get selectedTheme => _selectedThemeIndex;

  updateThemeIndex(index) {
    _selectedThemeIndex = index;
    _theme = Themes().themes[index];
    notifyListeners();
  }

  ThemeData get getTheme => _theme;
}
