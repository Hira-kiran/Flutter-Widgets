// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'dropDown.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String radio = "Matric";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Radio(
              activeColor: Colors.pink,
              value: "Matric",
              groupValue: radio,
              onChanged: (value) {
                setState(() {
                  radio = value.toString();
                });
              }),
          Radio(
              value: "fsc",
              groupValue: radio,
              onChanged: (value) {
                setState(() {
                  radio = value.toString();
                });
              }),
          Radio(
              value: "bs",
              groupValue: radio,
              onChanged: (value) {
                setState(() {
                  radio = value.toString();
                });
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DropDown()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
