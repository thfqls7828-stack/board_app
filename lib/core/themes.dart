import 'package:flutter/material.dart';

class BoardTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarThemeData(
      actionsPadding: EdgeInsets.only(right: 10),
      centerTitle: true,
      foregroundColor: Colors.white,
      backgroundColor: Colors.grey[200],
    ),

    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.blue,
      primary: Colors.amber,
      surface: Colors.white,
    ),

    dividerColor: Colors.black,
    highlightColor: Colors.redAccent,
    fontFamily: "CustomFont",
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarThemeData(
      actionsPadding: EdgeInsets.only(right: 10),
      centerTitle: true,
      foregroundColor: Colors.black,
      backgroundColor: Colors.grey,
    ),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.grey,
      primary: Colors.blueGrey,
      surface: Colors.white,
    ),

    scaffoldBackgroundColor: Colors.lightBlue,

    dividerColor: Colors.white,
    highlightColor: Colors.brown,
    fontFamily: "CustomFont",
  );
}
