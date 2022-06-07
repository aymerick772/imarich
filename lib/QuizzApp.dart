// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'dart:math';
// import 'package:rflutter_alert/rflutter_alert.dart';
// import 'package:flutter/widgets.dart';
//
// void main() {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: QuizApp(),
//       )));
// }
//
// class QuizApp extends StatefulWidget {
//   const QuizApp({Key? key}) : super(key: key);
//
//   @override
//   State<QuizApp> createState() => _QuizAppState();
// }
//
// class _QuizAppState extends State<QuizApp> {
//   int ask = 0;
//   List<bool> reponses = [true, false, false];
//   List<String> askQuest = [
//     'Le piton des neiges est un volcan de la Réunion ?',
//     'Flutter permet de faire des applications web également ?',
//     'Php est le language utilisé par Flutter ?'
//   ];
//   List<Icon> icons = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Expanded(
//             flex: 2,
//             child: Padding(
//               padding: EdgeInsets.all(25),
//               child: Center(
//                 child: Text(
//                   askQuest[ask],
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//                 padding: EdgeInsets.all(10.0),
//                 margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
//                 color: Colors.green,
//                 width: double.infinity,
//                 child: TextButton(
//                   onPressed: () {
//                     setState(() {
//                       if (reponses[ask] == true) {
//                         icons.add(
//                           Icon(
//                             Icons.check,
//                             color: Colors.green,
//                           ),
//                         );
//                       } else {
//                         icons.add(
//                           Icon(
//                             Icons.close,
//                             color: Colors.red,
//                           ),
//                         );
//                       }
//                       if (ask != (reponses.length - 1)) {
//                         ask++;
//                       } else {
//                         _onAlertButtonPressed(context);
//                         ask = 0;
//                       }
//                     });
//                   },
//                   child: Text(
//                     'Vrai',
//                     style: TextStyle(
//                         fontFamily: 'SourceSansPro',
//                         color: Colors.white,
//                         letterSpacing: 2.5,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )),
//           ),
//           Expanded(
//             child: Container(
//                 padding: EdgeInsets.all(10.0),
//                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                 color: Colors.red,
//                 height: 50,
//                 width: double.infinity,
//                 child: TextButton(
//                   onPressed: () {
//                     setState(() {
//                       if (reponses[ask] == false) {
//                         icons.add(
//                           Icon(
//                             Icons.check,
//                             color: Colors.green,
//                           ),
//                         );
//                         print('bonne reponse');
//                       } else {
//                         icons.add(
//                           Icon(
//                             Icons.close,
//                             color: Colors.red,
//                           ),
//                         );
//                         print('mauvaise reponse');
//                       }
//                       if (ask != (reponses.length - 1)) {
//                         print(ask);
//                         ask++;
//                       } else {
//                         _onAlertButtonPressed(context);
//                         ask = 0;
//                         // icons.clear();
//                       }
//                     });
//                   },
//                   child: Text(
//                     'Faux',
//                     style: TextStyle(
//                         fontFamily: 'SourceSansPro',
//                         color: Colors.white,
//                         letterSpacing: 2.5,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )),
//           ),
//           Expanded(
//               child: Container(
//             child: Row(
//               children: icons,
//             ),
//           ))
//         ],
//       ),
//     );
//   }
//
//   _onAlertButtonPressed(context) {
//     // score = icons.where((o) == Icons.close).toList();
//     Alert(
//       context: context,
//       type: AlertType.error,
//       title: "RFLUTTER ALERT",
//       desc: "Flutter is more awesome with RFlutter Alert.",
//       buttons: [
//         DialogButton(
//           child: Text(
//             "COOL",
//             style: TextStyle(color: Colors.white, fontSize: 20),
//           ),
//           onPressed: () => {
//             setState(() {
//               icons.clear();
//             }),
//             Navigator.pop(context, true)
//           },
//           width: 120,
//         )
//       ],
//     ).show();
//   }
// }
