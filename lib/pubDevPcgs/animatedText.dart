// ignore_for_file: file_names, avoid_print

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidget/pubDevPcgs/pinCodeField.dart';

class AnimatedTextW extends StatelessWidget {
  const AnimatedTextW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated text"),
        ),
        body: Container(
            height: 200,
            width: 200,
            color: Colors.grey,
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText(
                  "hira",
                ),
                RotateAnimatedText("kiran"),
                RotateAnimatedText("bscs"),
              ],
              totalRepeatCount: 2,
              pause: const Duration(microseconds: 3),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              onTap: () {
                print("tap");
              },
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PincodeFieldW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
