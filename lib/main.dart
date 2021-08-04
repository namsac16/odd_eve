import 'package:flutter/material.dart';
import './card.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final players = ["Player", "Computer"];
  var scores = [0 , 0];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ODD EVE"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.blueGrey[100],
          child: Column(
            children: [
              CardWidget(
                  text: players[0],
                  score: scores[0],
                  backColor: Colors.green[100],
                  textColor: Colors.green[900]),
              SizedBox(height: 50),
              CardWidget(
                  text: players[1],
                  score: scores[1],
                  backColor: Colors.brown[100],
                  textColor: Colors.brown[900]),
            ],
          ),
        ),
      ),
    );
  }
}
