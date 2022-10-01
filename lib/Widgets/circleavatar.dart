import 'package:flutter/material.dart';

import 'ButtonBar.dart';

class CircleAvatarW extends StatelessWidget {
  const CircleAvatarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Cicle avatar Widget")),
        body: const CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 100,
          child: CircleAvatar(
            //********properties*********** */

            // child: Text("hira"),
            // foregroundColor: Colors.amberAccent,
            // backgroundColor: Colors.amber,
            backgroundImage: NetworkImage(
                "https://thumbs.dreamstime.com/b/rainbow-love-heart-background-red-wood-60045149.jpg"),
            radius: 90, //for incraese size
            //if we want to use min or max radius then radius property is not used
            // minRadius: 100,
            // maxRadius: 400, //using these min max we make a responsive cicle Avatar
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ButtonBarW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
