import 'package:flutter/material.dart';

import 'listttile.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Grid view")),
        //  ******grid view********
        // body: GridView(
        //   gridDelegate:
        //       const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        //   children: [
        //     Container(
        //       margin: const EdgeInsets.all(10),
        //       height: 100,
        //       width: 100,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(10),
        //       height: 100,
        //       width: 100,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(10),
        //       height: 100,
        //       width: 100,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       margin: const EdgeInsets.all(10),
        //       height: 100,
        //       width: 100,
        //       color: Colors.amber,
        //     ),
        //   ],
        // ),
//******* */ gridview.builder**********
        body: GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (x, index) {
              return Container(
                color: Colors.black,
                margin: const EdgeInsets.all(10),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Listtilewidgets(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
