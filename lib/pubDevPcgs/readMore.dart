// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutterwidget/pubDevPcgs/shoppingCard.dart';
import 'package:readmore/readmore.dart';

//*********show readmore option in lengthy text  */
class ReadMoreW extends StatelessWidget {
  const ReadMoreW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Read More"),
        ),
        body: const ReadMoreText(
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
          trimCollapsedText: "Show All",
          trimExpandedText: "Show Less",
          trimLines: 4,
          colorClickableText: Colors.orange,
          trimMode: TrimMode.Line,
          lessStyle: TextStyle(color: Colors.purple),
          moreStyle: TextStyle(color: Colors.pink),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShoppingCartW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
