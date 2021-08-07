import 'package:flutter/material.dart';
import 'dart:math';

import './home.dart';
import './card.dart';
import './rows.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final players = ["Player", "Computer"];
  var scores = [0, 0];
  var playerChoice = 0;
  var compChoice = 0;

  int index = -1;

  List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 10, 20];
  final _random = new Random();

  void incIndex() {
    setState(() {
      index++;
    });
  }

  void incScore(int score) {
    setState(() {
      if(index == 0)
        scores[index] += score;
      else if(index == 1)
        scores[index] += compChoice;
    });
  }

  void choices(int choice)
  {
    setState(() {
          playerChoice = choice;
          compChoice = numbers[_random.nextInt(numbers.length)];
          if(playerChoice == compChoice)
            incIndex();
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ODD EVE"),
          centerTitle: true,
        ),
        body: (index == -1)
            ? HomeScreen(incIndex)
            : (index < players.length)
                ? Container(
                    width: double.infinity,
                    color: Colors.blueGrey[100],
                    child: Column(
                      children: [
                        CardWidget(
                            text: players[0],
                            score: scores[0],
                            backColor: Colors.green[100],
                            textColor: Colors.green[900]),
                        CardWidget(
                            text: players[1],
                            score: scores[1],
                            backColor: Colors.brown[100],
                            textColor: Colors.brown[900]),
                        SizedBox(height: 15),
                        RowButtons(['0', '1', '2'], incScore, choices),
                        SizedBox(height: 15),
                        RowButtons(['3', '4', '5'], incScore, choices),
                        SizedBox(height: 15),
                        RowButtons(['6', '10', '20'], incScore, choices),
                        SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          child: Text(
                            "Player chose $playerChoice ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                          color: Colors.lightBlue[50],
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: double.infinity,
                          child: Text(
                            "Computer chose $compChoice ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue),
                          ),
                          color: Colors.pink[50],
                        )
                      ],
                    ),
                  )
                : Container(
                    child: Text("ABD"),
                  ),
      ),
    );
  }
}
