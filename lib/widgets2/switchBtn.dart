// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'toggleBtn.dart';

class SwitchBtn extends StatefulWidget {
  const SwitchBtn({super.key});

  @override
  State<SwitchBtn> createState() => _SwitchBtnState();
}

class _SwitchBtnState extends State<SwitchBtn> {
  bool switchBtn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Button"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch(
              activeColor: Colors.pink,
              value: switchBtn,
              onChanged: (value) {
                setState(() {
                  switchBtn = value;
                });
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ToggleBtn()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
