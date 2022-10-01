import 'package:flutter/material.dart';

import 'placeHolder.dart';

class InkwellWidget extends StatelessWidget {
  const InkwellWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Inkwell Widget"),
        ),
        body: Center(
          //used for making non-clickable widget to clickable
          child: InkWell(
            // ***********properties*******
            onTap: () {},
            splashColor: Colors.purple,
            highlightColor: Colors.grey,
            radius: 20,
            borderRadius: BorderRadius.circular(10),

            child: Container(
              height: 100,
              width: 100,
              color: Colors.transparent,
              child: const Center(
                  child: Text(
                "Button",
                style: TextStyle(color: Colors.green),
              )),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PlaceHolderW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
