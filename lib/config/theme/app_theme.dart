import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.indigo,
  Colors.lime
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20
            ),
          backgroundColor: _colorThemes[selectedColor]
        ),
        colorSchemeSeed: _colorThemes[selectedColor],
        //brightness: Brightness.dark
    );
  }
}
