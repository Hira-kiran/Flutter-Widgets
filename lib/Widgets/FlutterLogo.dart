// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'circleavatar.dart';

class FlutterLogoW extends StatelessWidget {
  const FlutterLogoW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter Logo Widget")),
        //*******used to show flutter logo in application*********
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const FlutterLogo(
                //****Properties****** */
                size: 200,
                // style: FlutterLogoStyle.horizontal, //**show Flutter text horizontly
                style:
                    FlutterLogoStyle.stacked, //**show Flutter text vertically
                // style: FlutterLogoStyle.markOnly,//**show just Flutter icon
                // textColor: Colors.black,//**change flutter text color
                //*****For Animation****** */
                curve: Curves.linear,
                duration: Duration(seconds: 2),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CircleAvatarW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
