// import 'package:flutter/material.dart';
// import 'dart:math';
//
// void main() {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         appBar: AppBar(
//           title: Text("Dede"),
//           centerTitle: true,
//           backgroundColor: Colors.red,
//         ),
//         body: DedeApp(),
//       )));
// }
//
// class DedeApp extends StatefulWidget {
//   const DedeApp({Key? key}) : super(key: key);
//
//   @override
//   State<DedeApp> createState() => _DedeAppState();
// }
//
// class _DedeAppState extends State<DedeApp> {
//   int de1 = Random().nextInt(6) + 1;
//   int de2 = Random().nextInt(6) + 1;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//             child: TextButton(
//                 onPressed: () {
//                   setState(() {
//                     de1 = Random().nextInt(6) + 1;
//                     de2 = Random().nextInt(6) + 1;
//                   });
//                 },
//                 child: Image.asset("img/dice$de1.png"))),
//         Expanded(child: Image.asset("img/dice$de2.png")),
//       ],
//     );
//   }
// }
