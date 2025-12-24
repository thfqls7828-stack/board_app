import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  DropDownWidget({super.key, required this.menuItem});

  final List<String> menuItem;
  late String selected = menuItem[0];

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      iconSize: 70,
      value: widget.selected,
      style: TextStyle(color: Theme.of(context).colorScheme.primary),
      items: widget.menuItem.map<DropdownMenuItem<String>>((e) {
        return DropdownMenuItem(value: e, child: Text(e));
      }).toList(),
      onChanged: (value) => setState(() => widget.selected = value!),
    );
  }
}
