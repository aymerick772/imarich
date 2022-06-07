import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: CircleAvatar(
                  radius: 100, child: Image.asset("img/diamond.png")),
            ),
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Aymerick',
                      style: TextStyle(
                          fontFamily: 'Pacifico', color: Colors.white),
                    ),
                    Text(
                      'Payet',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          color: Colors.teal.shade100,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            Divider(
              height: 20,
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: Colors.white,
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(20),
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'blablebla',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          color: Colors.teal,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(20),
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.teal,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'blablebla',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          color: Colors.teal,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ],
        )),
      ),
    ),
  );
}
