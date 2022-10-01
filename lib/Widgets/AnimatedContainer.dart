// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'ClippetWidget7.dart';

class Animatedcntnr extends StatefulWidget {
  const Animatedcntnr({Key? key}) : super(key: key);

  @override
  State<Animatedcntnr> createState() => _AnimatedcntnrState();
}

class _AnimatedcntnrState extends State<Animatedcntnr> {
  //for dynamic values
  double height = 100;
  double width = 100;
  //function for set the state
  void changesize() {
    setState(() {
      height = 300;
      width = 200;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          //for set time
          duration: const Duration(milliseconds: 500),
          //for some style
          curve: Curves.bounceInOut,
          height: height,
          width: width,
          color: Colors.blue,
          child: GestureDetector(
            onTap: changesize,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const ClipperWidget())));
          });
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
