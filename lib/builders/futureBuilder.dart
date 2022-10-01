// ignore_for_file: file_names, non_constant_identifier_names

//*****Future builder mai jocheez future ma any hy hmy ni pta kb aeygi
//is ki 1 property hoti h future jo k koe na koe function return krta h  */

import 'package:flutter/material.dart';
import 'package:flutterwidget/builders/streamBuilder.dart';

class FutureBuilderW extends StatefulWidget {
  const FutureBuilderW({super.key});

  @override
  State<FutureBuilderW> createState() => _FutureBuilderWState();
}

class _FutureBuilderWState extends State<FutureBuilderW> {
  Future<DateTime> FutureData() async {
    await Future.delayed(const Duration(seconds: 3));
    return DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Future Builder")),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                FutureData();
                setState(() {});
              },
              child: const Text("Tap")),
          FutureBuilder(
              future: FutureData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.done ||
                    snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else if (snapshot.hasData) {
                    return Text(snapshot.data.toString());
                  } else {
                    return const Text("something went wrong");
                  }
                } else {
                  return Text(snapshot.connectionState.toString());
                }
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const FutureStreamW())));
        },
        child: const Icon(Icons.read_more),
      ),
    );
  }
}
