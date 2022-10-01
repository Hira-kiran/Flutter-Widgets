// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutterwidget/drawer/resolution.dart';

import '../pubDevPcgs/readMore.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.purple),
                currentAccountPicture: CircleAvatar(),
                accountName: Text("Hira kiran"),
                accountEmail: Text("hirakiran@gmail.com")),
            ListTile(
              leading: const Icon(Icons.restart_alt_outlined),
              title: const Text("Resolution"),
              subtitle: const Text("Auto"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ResolutionScreen())));
              },
              // trailing: Icon(Icons.arrow_back),
            ),
            const ListTile(
              leading: Icon(Icons.file_download),
              title: Text("File Extension"),
              // trailing: Icon(Icons.file_download),
              subtitle: const Text("JPEG"),
            ),
            const ListTile(
              leading: Icon(Icons.rate_review),
              title: const Text("Rate us"),
              // trailing: Icon(Icons.rate_review),
            ),
            const ListTile(
              leading: const Icon(Icons.share),
              title: Text("Share"),
              // trailing: Icon(Icons.share),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1,
              ),
            ),
            const ListTile(
              leading: Icon(Icons.privacy_tip_sharp),
              title: Text("Privacy policy"),
              // trailing: Icon(Icons.share),
            ),
            const ListTile(
              leading: Icon(Icons.terminal),
              title: const Text("Terms ofn Use"),
              // trailing: Icon(Icons.share),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: const Text("Drawer widget")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const ReadMoreW())));
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
