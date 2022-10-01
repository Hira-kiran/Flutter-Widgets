// ignore_for_file: file_na, file_names

import 'package:flutter/material.dart';

import 'inkwell.dart';

class ButtonBarW extends StatelessWidget {
  const ButtonBarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("ButtonBar")),
        //button bar is multi child layout thats why we use children
        // used to arrange buttons..if we want to use multiple buttons then we use
        //  button bar for arrange all buttons
        body: ButtonBar(
          // *********properties********
          // alignment: MainAxisAlignment.end,
          buttonPadding: const EdgeInsets.all(100),
          // mainAxisSize: MainAxisSize.max,//right
          // mainAxisSize: MainAxisSize.min,//left
          // overflowDirection: VerticalDirection.down,//**For arrangement */
          // overflowDirection: VerticalDirection.up,//**For arrangement */
          // overflowButtonSpacing: 24,//****for spacing
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("OK")),
            ElevatedButton(onPressed: () {}, child: const Text("Cancel")),
            ElevatedButton(onPressed: () {}, child: const Text("Save")),
            ElevatedButton(onPressed: () {}, child: const Text("More")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InkwellWidget(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
