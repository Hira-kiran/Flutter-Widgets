// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../pubDevPcgs/carousalSliderr.dart';

//make Custom search class
class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              showSearch(context: context, delegate: Customsearch());
            },
            icon: const Icon(Icons.search))
      ]),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const Carousalslider())));
        const Icon(Icons.read_more);
      }),
    );
  }
}

class Customsearch extends SearchDelegate {
  int index = 0;
  //Data
  List<String> allData = [
    "Meat Pizza",
    "Cheese Pizza",
    "Fajita Pizza",
    "Tikka Pizza",
    "Tanduri Pizza",
    "Cheese Pizza",
    "Malai Boti Pizza"
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchquery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(item);
      }
    }
    return ListView.builder(itemBuilder: (context, index) {
      var result = matchquery[index];
      return ListTile(
        title: Text(result),
      );
    });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchquery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(item);
      }
    }
    return ListView.builder(itemBuilder: (context, index) {
      var result = matchquery[index];
      return ListTile(
        title: Text(result),
      );
    });
  }
}
