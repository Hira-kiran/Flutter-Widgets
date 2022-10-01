import 'package:flutter/material.dart';
import 'package:flutterwidget/widgets2/radioButton.dart';

class CheckBoxW extends StatefulWidget {
  const CheckBoxW({super.key});

  @override
  State<CheckBoxW> createState() => _CheckBoxWState();
}

class _CheckBoxWState extends State<CheckBoxW> {
  bool pak = false;
  bool india = false;
  bool lahore = false;
  bool karachi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Check Box")),
        body: Column(
          children: [
            Checkbox(
                value: pak,
                onChanged: (value) {
                  setState(() {
                    pak = value!;
                  });
                }),
            Checkbox(
                value: india,
                onChanged: (value) {
                  setState(() {
                    india = value!;
                  });
                }),
            Checkbox(
                value: lahore,
                onChanged: (value) {
                  setState(() {
                    lahore = value!;
                  });
                }),
            Checkbox(
                value: karachi,
                onChanged: (value) {
                  setState(() {
                    karachi = value!;
                  });
                }),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RadioButton(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
