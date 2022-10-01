import 'package:flutter/material.dart';

import 'gridview.dart';

// stack mean 1 cheez k opr 1 or cheez
class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stack Widget"),
        ),
        body: Stack(
          // ****properties****
          // alignment: Alignment.centerLeft,
          // fit: StackFit.expand,
          // textDirection: TextDirection.rtl,
          // clipBehavior: Clip.none,
          children: [
            Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 175, 141, 141),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Positioned(
              // ***properties***
              // top: 15,
              // right: 60,
              // height: 40,
              // width: 40,

              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
            ),
            // const Text("data"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GridviewWidget(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
