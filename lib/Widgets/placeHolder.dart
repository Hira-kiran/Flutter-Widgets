// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'setstate.dart';

class PlaceHolderW extends StatelessWidget {
  const PlaceHolderW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Placeholder Widget")),
        body: Center(
          child: Column(
            children: const [
              Flexible(
                //placeholder is usefull during the development that the interface is not yet completed.
                child: Placeholder(
                  color: Colors.purple,
                  strokeWidth: 5,
                  fallbackHeight: 15,
                  fallbackWidth: 15,
                ),
              ),
              Flexible(
                child: Placeholder(
                  color: Colors.purple,
                  strokeWidth: 5,
                  fallbackHeight: 115,
                  fallbackWidth: 115,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SetstateW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
