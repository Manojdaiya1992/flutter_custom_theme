import 'dart:collection';

import 'package:flutter/material.dart';

class Themes {
  final greenTheme = ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.green)),
      primaryColor: Colors.green.shade700,
      backgroundColor: Colors.lightBlueAccent.shade700,
      scaffoldBackgroundColor: Colors.yellow.shade300,
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Colors.white70, size: 20.0),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.yellowAccent, backgroundColor: Colors.cyan));

  final yellowTheme = ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.yellow)),
      primaryColor: Colors.yellow.shade700,
      backgroundColor: Colors.pinkAccent.shade700,
      scaffoldBackgroundColor: Colors.green.shade300,
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Colors.white70, size: 20.0),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.lightGreen,
          backgroundColor: Colors.deepPurple));

  List<ThemeData> get themes =>
      [ThemeData.dark(), ThemeData.light(), greenTheme, yellowTheme];
}
