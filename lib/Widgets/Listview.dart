// ignore_for_file: file_names, unused_label, dead_code, prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';

import 'FlutterLogo.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Listview Widget")),
        // *****************listview*********************
        //***********use for adding scrolling
        // body: ListView(
        //   padding: const EdgeInsets.all(10),
        //   reverse: true, //last container show in first
        //   physics: const NeverScrollableScrollPhysics(), //stop scrolling
        //
        //     ContainescrollDirection: Axis.horizontal,
        //   children: [r(
        //       // height: 200,
        //       width: 200,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       // height: 200,
        //       width: 200,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       // height: 200,
        //       width: 200,
        //       color: Colors.pink,
        //     ),
        //   ],
        // ),
        // *****************Listview.builder*******************
        //************we make unlimited list in this
        //its start from zero
        // body: ListView.builder(
        //     itemCount: 20,
        //     itemBuilder: ((BuildContext context, index) {
        //       return const ListTile(
        //         title: Text("Person"),
        //         leading: Icon(Icons.person),
        //         trailing: Icon(Icons.phone),
        //       );
        //     })),
        /*   body: ListView.builder(itemcount:100
          itemBuilder: ((context, index) {
          return Text("item" +index.toString());
        }) */
        // *********************Listview.seperated**************
        // *********used to add seperated line in each line
        // body: ListView.separated(
        //   itemCount: 40,
        //   itemBuilder: (BuildContext context, index) {
        //     return Padding(
        //       padding: const EdgeInsets.all(10.10),
        //       child: Container(
        //         color: Colors.amberAccent,
        //         //index+1 is used,to start our  index at 1 not 0
        //         child: Text("Person ${index + 1}"),
        //       ),
        //     );
        //   },
        //   separatorBuilder: (BuildContext context, index) {
        //     return Container(
        //       color: Colors.pink,
        //       child: Text("separated ${index + 1}"),
        //     );
        //   },
        // ),
        // ******************Listview Custom*********************
        //**********we make listview according to our choice

        //   body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
        //     (BuildContext context, index) {
        //       return Container(
        //         color: Colors.brown,
        //         child: Text("pakistan ${index + 1}"),
        //       );
        //     },
        //   )),
        // );
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FlutterLogoW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
