//used for swipe left-to-right and right-to-left

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'AnimatedContainer.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  //**********for making list
  List<data> dataList = [];
  @override
  void initState() {
    super.initState();
    dataList.add(data("0", "Hira kiran", "Faislabad", "85000"));
    dataList.add(data("1", "Misbah", "Lahore", "45000"));
    dataList.add(data("2", "Kamran", "Islambaad", "91000"));
    dataList.add(data("3", "Fahran", "Pishwer", "81000"));
    dataList.add(data("4", " Muqadas", "Jarawala", "39000"));
    dataList.add(data("4", "Faizan", "Gatwala", "39000"));
    dataList.add(data("4", " Zohaib", "Rawalpindi", "39000"));
  }

  ListTile buildListTile(int index) {
    return ListTile(
      title: Text(
        dataList[index].name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Text(
        dataList[index].city,
        style: const TextStyle(color: Colors.grey),
      ),
      leading: const Icon(Icons.flight),
      trailing: Text(
        dataList[index].salary,
        style: const TextStyle(color: Color.fromARGB(255, 237, 90, 79)),
      ),
    );
  }

  Widget buildbackground() {
    //for left to right swap
    return Container(
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 5),
            child: Icon(
              Icons.done,
              color: Colors.white,
            ),
          ),
          Text(
            "Completed",
            style: TextStyle(color: Colors.white, fontSize: 18),
          )
        ],
      ),
    );
  }

  Widget buildsecondraybackground() {
    return Container(
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 5, left: 10),
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "Deleted",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void Completed() {}
  // ignore: non_constant_identifier_names
  void Deleted() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible Widget"),
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(dataList[index].srNo), //function
            //for left to right
            background: buildbackground(),
            //for right to left
            secondaryBackground: buildsecondraybackground(),
            //condition
            onDismissed: (DismissDirection direction) {
              direction == DismissDirection.startToEnd
                  ? Completed()
                  : Deleted();
              setState(() {
                dataList.removeAt(index);
              });
            },

            child: buildListTile(index),
            //if we remove list in triplist
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const Animatedcntnr())));
          });
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}

class data {
  String srNo;
  String name;
  String city;
  String salary;
  data(this.srNo, this.name, this.city, this.salary);
}
