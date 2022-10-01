// ignore_for_file: file_names
//list mai items ko kaisy drag and drop kr skty hn..kaisy item/ichat ko start pr pin kr skty hn
import 'package:flutter/material.dart';

import '../pubDevPcgs/countryCodePicker.dart';

class ReordableListViewWid extends StatefulWidget {
  const ReordableListViewWid({super.key});

  @override
  State<ReordableListViewWid> createState() => _ReordableListViewWidState();

  static builder(contex) {}
}

class _ReordableListViewWidState extends State<ReordableListViewWid> {
  //this is like array
  List<String> productList = ['oranage', 'apple', 'bnana', 'mango', 'grapes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Recordable List View")),
        body: ReorderableListView.builder(
            itemBuilder: ((context, index) {
              return Card(
                key: ValueKey(productList[index]),
                child: ListTile(
                  title: Text(productList[index]),
                ),
              );
            }),
            itemCount: productList.length,
            onReorder: ((oldIndex, newIndex) {
              setState(() {
                if (newIndex > oldIndex) {
                  newIndex = newIndex - 1;
                }
                final element = productList.removeAt(oldIndex);
                productList.insert(newIndex, element);
              });
            })),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CountryCode(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
