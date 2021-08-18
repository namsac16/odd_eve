import 'package:flutter/material.dart';
import 'dart:math';

import './card.dart';
import './rows.dart';

class GamePage extends StatefulWidget {
  final int index;
  final Function indexHandler;
  final Function winnerHandler;
  GamePage(this.index, this.indexHandler, this.winnerHandler);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final players = ["Player", "Computer"];
  final scores = [0, 0];

  var playerChoice = 0;
  var compChoice = 0;

  final List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 10, 20];
  final _random = new Random();

  String winner;

  void incScore(int score) {
    setState(() {
      if (widget.index == 0)
        scores[widget.index] += score;
      else if (widget.index == 1) scores[widget.index] += compChoice;
    });
  }

  void choices(int choice) {
    setState(() {
      playerChoice = choice;
      int choice1 = numbers[_random.nextInt(numbers.length)];
      compChoice = choice1;
      if (playerChoice == compChoice) {
        if (widget.index == 0)
          widget.indexHandler();
        else {
          if (scores[0] > scores[1])
            winner = players[0];
          else if (scores[0] < scores[1])
            winner = players[1];
          else
            winner = "Tie";
          widget.winnerHandler(winner, scores[0], scores[1]);
          widget.indexHandler();
        }
      }
      if (scores[1] > scores[0]) {
        winner = players[1];
        widget.winnerHandler(winner, scores[0], scores[1]);
        widget.indexHandler();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
