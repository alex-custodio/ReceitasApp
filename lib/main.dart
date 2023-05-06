import 'package:flutter/material.dart';

import 'screens/categorias.dart';

void main() {
  final ThemeData tema = ThemeData();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Categorias(),
    theme: tema.copyWith(
      colorScheme: tema.colorScheme.copyWith(
        primary: Colors.pink,
        secondary: Colors.amber
      ),
      canvasColor: Color.fromRGBO(255, 254, 229, 1),
      textTheme: tema.textTheme.copyWith(
        headline1: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoCondensed'
        ),
      )
    ),
  ));
}
