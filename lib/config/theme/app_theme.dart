import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _ColorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _ColorThemes.length - 1);

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _ColorThemes[selectedColor],
      // brightness: Brightness.dark
    );
  }
}
