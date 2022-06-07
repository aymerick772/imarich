import 'package:flutter/material.dart';
import 'package:imarich/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: QuizzApp(),
        ),
      ),
    ),
  );
}

class QuizzApp extends StatefulWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  int numeroQuestion = 0;

  // liste des questions Avec la class

  List<Question> listQuestion = [
    Question(
        "Vous venez de crevez un pneu à St André. Vous n'avez pas de téléphone vous décidez de faire du stop. "
        "Une ford fiesta rouge s\'arrête et le conducteur vous demande si vous voulez qu\'il vous dépanne.",
        0),
    Question("Il acquiesce de la tête sans faire attention à la question.", 1),
    Question(
        "Lorsqu'il commence à conduire, il vous demande d'ouvrir la boite à gant. À l’intérieur, vous trouverez un "
        "couteau ensanglanté, deux doigts coupés et un CD de T-Matt.",
        2),
    Question("Woaw ! Quelle évasion ! ", 3),
    Question(
        "En traversant la route du littoral, vous réfléchissez à la sagesse douteuse de poignarder quelqu’un "
        "pendant qu’il conduit une voiture dans laquelle vous êtes.",
        4),
    Question(
        "Vous vous faites un bon dalon et vous chantez le dernier son de T-matt ensemble. Il vous dépose à "
        "Cambaie et il vous demande si vous connaissez un bon endroit pour jeter un corps.",
        5),
  ];

  //Initialisation de la première liste de reponses
  List<String> listReponse = [
    "Vous lui remerciez et vous montez dans la voiture",
    "Vous lui demandez s'il n'est pas un meurtrier avant !",
  ];

  //récupère l'index numeroQuestion et la condition du bouton(0 ou 1)
  click(int b, int c) {
    setState(() {
      //Condition avec l'index numeroQuestion
      switch (b) {
        case 0:
          //Condition avec le resultat de l'index du bouton
          if (c == 1) {
            //vide la liste des reponses
            listReponse.clear();
            //ajoute les réponses
            listReponse.addAll(<String>[
              "J'adore T-Matt, je lui donne le CD.",
              'C\'est lui ou moi, je prends le couteau et je le poignarde.'
            ]);
            numeroQuestion = 2;
          } else {
            listReponse.clear();
            listReponse.addAll(<String>[
              "Au moins il est honnête. Vous montez ! ",
              'Attends, mais je sais comment changer un pneu voyons !'
            ]);
            numeroQuestion = 1;
          }
          break;
        case 1:
          if (c == 1) {
            listReponse.clear();
            listReponse.addAll(<String>[
              'J\'adore T-Matt, je lui donne le CD.',
              'Recommencer'
            ]);
            numeroQuestion = 2;
          } else {
            listReponse.clear();
            listReponse.addAll(<String>['Recommencer', '']);
            numeroQuestion = 3;
          }
          break;
        case 2:
          if (c == 1) {
            listReponse.clear();
            listReponse.addAll(<String>['Recommencer', '']);
            numeroQuestion = 4;
          } else {
            listReponse.clear();
            listReponse.addAll(<String>['Recommencer', '']);
            numeroQuestion = 5;
          }
          break;
        case 3:
          if (c == 1) {
            listReponse.clear();
            listReponse.addAll(<String>[
              'Vous lui remerciez et vous montez dans la voiture',
              'Vous lui demandez s\'il n\'est pas un meurtrier avant !'
            ]);
            numeroQuestion = 0;
          }
          break;
        case 4:
          if (c == 1) {
            listReponse.clear();
            listReponse.addAll(<String>[
              'Vous lui remerciez et vous montez dans la voiture',
              'Vous lui demandez s\'il n\'est pas un meurtrier avant !'
            ]);
            numeroQuestion = 0;
          }
          break;
        case 5:
          if (c == 1) {
            listReponse.clear();
            listReponse.addAll(<String>[
              'Vous lui remerciez et vous montez dans la voiture',
              'Vous lui demandez s\'il n\'est pas un meurtrier avant !'
            ]);
            numeroQuestion = 0;
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 6,
          child: Center(
            child: Text(
              //texte de l'enoncé par rapport au numéroQuestion
              listQuestion[numeroQuestion].enonce,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () => {
              //change l'état du children pour afficher en dynamique les boutons et énoncé
              setState(() {
                //fonction click avec paramètre numéroQuestion et valeur du bouton(0 ou 1)
                click(numeroQuestion, 1);
              })
            },
            child: Text(
              listReponse[0],
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () => {
              this.setState(() {
                click(numeroQuestion, 0);
              }),
            },
            child: Text(
              listReponse[1],
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
      //),
    );
  }
}
