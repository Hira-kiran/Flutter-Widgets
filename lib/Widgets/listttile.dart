import 'package:flutter/material.dart';

import 'textfield.dart';

class Listtilewidgets extends StatelessWidget {
  const Listtilewidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("List tile")),
        body: ListView(
          children: [
            ListTile(
              title: const Text("Title 1"),
              subtitle: const Text("Data"),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.star),
              onTap: () {},
              onLongPress: () {},
              dense: true,
              // tileColor: const Color.fromARGB(255, 119, 99, 99),
            ),
            ListTile(
              title: const Text("Title 2"),
              subtitle: const Text("Bscs"),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.star),
              onTap: () {},
              onLongPress: () {},
              dense: true,
              // tileColor: const Color.fromARGB(255, 119, 99, 99),
            ),
            ListTile(
              title: const Text("Title"),
              subtitle: const Text("6th"),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.star),
              onTap: () {},
              onLongPress: () {},
              dense: true,
              // tileColor: const Color.fromARGB(255, 119, 99, 99),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextFieldWidget(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
