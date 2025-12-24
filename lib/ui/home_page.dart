import 'package:flutter/material.dart';

// 일반 색상은 Theme.of(context).dividerColor
// 하이라이트 색상 Theme.of(context).highlightColor

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: const Placeholder());
  }
}
