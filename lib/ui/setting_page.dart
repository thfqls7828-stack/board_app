import 'package:board_app/ui/components/dropdown_button.dart';
import 'package:board_app/ui/components/setting_container.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).dividerColor,
          ),
        ),
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          spacing: 20,
          mainAxisSize: MainAxisSize.min,
          children: [
            SettingContainer(
              text: "테마 설정",
              widget: DropDownWidget(menuItem: ["light", "dark"]),
            ),
            SettingContainer(
              text: "언어 설정",
              widget: DropDownWidget(menuItem: ["한글", "영어"]),
            ),
          ],
        ),
      ),
    );
  }
}
