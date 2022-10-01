// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'FlutterLogo.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Safe Area Widget")),
        body: const SafeArea(
          //BY defeult its value is true
          top: false,
          //minimum used for padding
          minimum: EdgeInsets.all(10),
          maintainBottomViewPadding: true,
          child: Text(
            "Hello",
            // style: TextStyle(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FlutterLogoW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
