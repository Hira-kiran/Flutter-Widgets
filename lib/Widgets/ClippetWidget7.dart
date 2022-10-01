// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'spacerwidget.dart';

class ClipperWidget extends StatefulWidget {
  const ClipperWidget({Key? key}) : super(key: key);

  @override
  State<ClipperWidget> createState() => _ClipperWidgetState();
}

class _ClipperWidgetState extends State<ClipperWidget> {
  @override
  Widget build(BuildContext context) {
    // **********clipRect***********
    //show rectangle shap clipper*****
    // return Center(

    //   child: ClipRRect(
    //     //align use for set hight and width
    //     child: Align(
    //       heightFactor: 0.7,
    //       widthFactor: 0.7,
    //       child: Image.network(
    //           "https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&w=1000&q=80"),
    //     ),
    //   ),
    // );
    // **********ClipRRect*********
    //used for round the corner of image****
    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: ClipRRect(
    // borderRadius: BorderRadius.circular(88),
    // borderRadius: const BorderRadius.all(Radius.circular(80)),
    // borderRadius: const BorderRadius.only(topLeft: Radius.circular(29)),
    //     child: Align(
    //       heightFactor: 0.7,
    //       widthFactor: 0.7,
    //       child: Image.network(
    //           "https://burst.shopifycdn.com/photos/person-holds-a-book-over-a-stack-and-turns-the-page.jpg?width=1200&format=pjpg&exif=0&iptc=0"),
    //     ),
    //   ),
    // );
    // *********clipOval*********
    //convert image oval or circle
    return Scaffold(
      appBar: AppBar(title: const Text("Clipper Widget")),
      body: ClipOval(
        clipBehavior: Clip.hardEdge,
        child: Image.network(
          "https://images.pexels.com/photos/45901/oxeye-daisy-flower-ox-eye-white-45901.jpeg?cs=srgb&dl=pexels-pixabay-45901.jpg&fm=jpg",
          height: 50,
          width: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const SpacerWidget())));
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
