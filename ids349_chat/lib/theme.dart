import 'package:flutter/material.dart';

class AppTheme{
  //Atributo en llave para obligar que sea nombrado al enviar un valor (no posicional)
  AppTheme({this.selectedColor = 0})
  :assert(selectedColor >= 0, "Selected color must be positive");

  int selectedColor;

  List<Color> colorThemes = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.purple
  ];

  ThemeData theme(){
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorThemes[selectedColor]
    );
  }
}

