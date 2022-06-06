import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  AudioCache player = AudioCache(prefix: 'assets/');

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        // appBar: AppBar(
        //   title: Text("Je suis Riche"),
        //   centerTitle: true,
        // ),
        body: SafeArea(child: Container(height: 200, child: DicePage())),
      ),
    ),
  );
}

// class DicePage extends StatelessWidget {
//   const DicePage({
//     Key? key,
//     required this.leftDiceNumber,
//   }) : super(key: key);
//
//   final int leftDiceNumber;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: TextButton(
//       onPressed: () {},
//       child: Image.asset("img/$leftDiceNumber.png"),
//     ));
//   }
// }

class DicePage extends StatefulWidget {
  const DicePage({
    Key? key,
  }) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int d1 = Random().nextInt(6);
  int d2 = 2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              Image.asset("img/dice$d1.png");
            });
          },
          child: Image.asset("img/dice$d1.png"),
        ),
        Expanded(
          child: Image.asset("img/dice$d2.png"),
        )
      ],
    );
  }
}
