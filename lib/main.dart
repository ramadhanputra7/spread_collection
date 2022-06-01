import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Text> myList = List.generate(
      50,
      (index) => Text(
            "${index + 1}",
            style: TextStyle(
              fontSize: 30,
            ),
          ));

  List<Container> myListc = List.generate(
      20,
      (index) => Container(
            height: 20,
            width: 20,
            color: Color.fromARGB(255, Random().nextInt(220),
                Random().nextInt(220), Random().nextInt(220)),
          ));

  List<Image> myListi = List.generate(
      1,
      (index) => Image.asset(
            "images/wendy.jpg",
          ));
  List<Image> myListi2 = List.generate(
      1,
      (index) => Image.asset(
            "images/wendy2.jpg",
          ));
  List<Image> myListi3 = List.generate(
      1,
      (index) => Image.asset(
            "images/wendy3.jpg",
          ));
  List<Image> myListi4 = List.generate(
      1,
      (index) => Image.asset(
            "images/wendy4.jpg",
          ));
  List<Image> myListi5 = List.generate(
      1,
      (index) => Image.asset(
            "images/wendy5.jpg",
          ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Spread Collection"),
        ),
        body: ListView(
          children: [
            ...myListi,
            ...myListi2,
            ...myListi3,
            ...myListi4,
            ...myListi5,
            ...myListc,
            ...myList,
            Container(
              color: Colors.blue,
              width: 200,
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
