// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';

import '../widgets2/recordablelist.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("SnackBar")),
        body: ElevatedButton(
          child: const Text("click here"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text("fill the field"),
                action: SnackBarAction(
                  label: "Done",
                  onPressed: () {},
                )));
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReordableListViewWid(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
