import 'package:board_app/core/themes.dart';
import 'package:board_app/ui/home_page.dart';
import 'package:board_app/ui/write_page.dart';
import 'package:board_app/ui/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BoardApp());
}

class BoardApp extends StatelessWidget {
  const BoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BoardApp",
      themeMode: ThemeMode.light,
      theme: BoardTheme.theme,
      darkTheme: BoardTheme.darktheme,
      home: WritePage(),
    );
  }
}
