import 'package:flutter/material.dart';

class SettingContainer extends StatelessWidget {
  const SettingContainer({super.key, required this.widget, required this.text});

  final Widget widget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Text(text), widget],
      ),
    );
  }
}
