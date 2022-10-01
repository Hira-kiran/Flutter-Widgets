// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutterwidget/widgets2/switchBtn.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> dropDownList = [
    "Shiblings",
    "Hira",
    "Misbah",
    "Kamran",
    "Farhan"
  ];
  String dropDownValue = "Shiblings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop Down List"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text("Chose any one: "),
              DropdownButton(
                  value: dropDownValue,
                  items: dropDownList
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      dropDownValue = value.toString();
                    });
                  }),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SwitchBtn()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
