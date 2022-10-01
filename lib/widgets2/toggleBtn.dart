// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ToggleBtn extends StatefulWidget {
  const ToggleBtn({super.key});

  @override
  State<ToggleBtn> createState() => _ToggleBtnState();
}

class _ToggleBtnState extends State<ToggleBtn> {
  List<bool> toggleValue = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Button"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ToggleButtons(
              onPressed: (index) {
                setState(() {
                  toggleValue[index] = !toggleValue[index];
                });
              },
              isSelected: toggleValue,
              children: const [
                Icon(FontAwesomeIcons.android),
                Icon(FontAwesomeIcons.apple),
                Icon(FontAwesomeIcons.windows),
                Icon(Icons.line_axis_outlined),
              ]),
        ],
      ),
    );
  }
}
