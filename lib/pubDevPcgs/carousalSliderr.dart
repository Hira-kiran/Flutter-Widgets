// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Widgets/fonts.dart';
//*********** firtly add package from pub.dev*********** */
//                carousel_slider: ^4.1.1

class Carousalslider extends StatelessWidget {
  const Carousalslider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Carousel Slider")),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: CarouselSlider(
            items: [
              Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("images/bluewalpaper.jpg"),
                        fit: BoxFit.fill)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Here is the carousel slider",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage("images/img1.jpg"), fit: BoxFit.fill),
                ),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("images/img2.jpg"),
                        fit: BoxFit.fill)),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("images/img3.jpg"),
                        fit: BoxFit.fill)),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("images/img4.jpg"),
                        fit: BoxFit.fill)),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage("images/img5.jpg"),
                        fit: BoxFit.fill)),
              ),
            ],
            options: CarouselOptions(
              height: 300,

              autoPlay: true, //automatically play slider
              // reverse: true, //moving reverce
              // scrollDirection: Axis.vertical, //scroll pages vertical
              viewportFraction: 0.6, //view area size
              autoPlayCurve: Curves.bounceInOut, //for animation
              enlargeCenterPage: true, //center image visible in large
              // viewportFraction: 60, //cover screen space
              autoPlayInterval:
                  const Duration(seconds: 3), //move after 3 seconds
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Fonts(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
