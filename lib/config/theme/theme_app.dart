import 'package:flutter/material.dart';

const Color _customColor = Color(0XFF0c0a09);

const List<Color> _availableColorThemes = [
  _customColor,
  Colors.black,
  Color.fromARGB(255, 13, 52, 83),
  Colors.red,
  Color.fromARGB(255, 11, 49, 45),
  Colors.amber,
  Colors.green,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}) {
    assert(
      selectedColor >= 0 && selectedColor <= _availableColorThemes.length - 1,
      'App color must be valid value ( 0 - ${_availableColorThemes.length})',
    );
  }

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: _availableColorThemes[selectedColor],
    );
  }

  ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: _availableColorThemes[selectedColor],
    );
  }
}