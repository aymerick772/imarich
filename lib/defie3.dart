// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// void main() {
//   AudioCache player = AudioCache(prefix: 'assets/');
//   String numero = "1";
//   MaterialColor colors = Colors.red;
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         // appBar: AppBar(
//         //   title: Text("Je suis Riche"),
//         //   centerTitle: true,
//         // ),
//         body: SafeArea(
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             // crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               note(colors: Colors.blue, player: player, numero: numero),
//               note(colors: Colors.red, player: player, numero: "2"),
//               note(colors: Colors.orange, player: player, numero: "3"),
//               note(colors: Colors.green, player: player, numero: "4"),
//               note(colors: Colors.yellow, player: player, numero: "4"),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
//
// class note extends StatelessWidget {
//   const note({
//     Key? key,
//     required this.colors,
//     required this.player,
//     required this.numero,
//   }) : super(key: key);
//
//   final MaterialColor colors;
//   final AudioCache player;
//   final String numero;
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//           color: colors,
//           child: GestureDetector(onTap: () {
//             player.play('note$numero.wav');
//           })),
//     );
//   }
// }
