// ignore_for_file: file_names
//different text style ko 1 hi line mai style kr skty hn
//textspan ko use krta h

import 'package:flutter/material.dart';

import '../drawer/drawer.dart';

class RichTextW extends StatelessWidget {
  const RichTextW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Rich Text")),
        body: RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.bodyText1,
                text: "hello",
                children: const [
              TextSpan(text: "world"),
              TextSpan(text: "signUp")
            ])),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DrawerWidget(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
