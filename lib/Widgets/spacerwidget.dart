//spacer used for spacing between widgets
//also used with rows and columns

import 'package:flutter/material.dart';

import 'safeArea.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Spacer Widget")),
        body: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            const Spacer(
                // flex: 2,
                ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SafeAreaWidget(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
