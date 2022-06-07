import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(3, 169, 244, 100),
        appBar: AppBar(
          title: Text("Ask me anything"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(33, 150, 243, 100),
        ),
        body: ballApp(),
      )));
}

class ballApp extends StatefulWidget {
  const ballApp({Key? key}) : super(key: key);

  @override
  State<ballApp> createState() => _ballAppState();
}

class _ballAppState extends State<ballApp> {
  int ba1 = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    ba1 = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset("img/ball$ba1.png"))),
      ],
    );
  }
}
