import 'package:flutter/material.dart';

import 'searchBar.dart';

class SetstateW extends StatefulWidget {
  const SetstateW({Key? key}) : super(key: key);

  @override
  State<SetstateW> createState() => _SetstateWState();
}

class _SetstateWState extends State<SetstateW> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Setstate")),
        body: ElevatedButton(
          onPressed: () {
            setState(() {
              number++;
            });
          },
          child: Text("$number"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchBar(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
