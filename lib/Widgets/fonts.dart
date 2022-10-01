import 'package:flutter/material.dart';
import 'package:flutterwidget/Widgets/richText.dart';

//*****firstly you add font and add in pubspec.yaml file********* */

class Fonts extends StatelessWidget {
  const Fonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "data",
            style: TextStyle(
                fontFamily: "Pacifo", decoration: TextDecoration.underline),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: const Text(
                "Fonts",
                style: TextStyle(fontFamily: "Anton"),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RichTextW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
