// ignore_for_file: file_names

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'animatedText.dart';

class ShoppingCartW extends StatelessWidget {
  const ShoppingCartW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shopping cart"),
        ),
        body: Center(
          child: Badge(
            toAnimate: true,
            shape: BadgeShape.circle,
            alignment: Alignment.center,
            animationDuration: const Duration(seconds: 3),
            animationType: BadgeAnimationType.slide,
            // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
            badgeColor: Colors.green,
            badgeContent: const Text(
              "1",
              style: TextStyle(color: Colors.white),
            ),
            child: const Icon(
              Icons.shopping_bag,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedTextW(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
