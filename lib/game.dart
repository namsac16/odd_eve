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

  String message = "Start Game!!!";

  void setMessage(int choice) {
    setState(() {
      switch (choice) {
        case -1:
        {
          message = "And That's OUT!";
          break;
        }
        case 0:
        {
          message = "Well Defended";
          break;
        }
        case 1:
          {
            message = "Just a Single";
            break;
          }
        case 2:
          {
            message = "Double!!";
            break;
          }
        case 3:
          {
            message = "Triple!!!";
            break;
          }
        case 4:
          {
            message = "Faboulous FOUR!";
            break;
          }
        case 5:
          {
            message = "Five Runs!";
            break;
          }
        case 6:
          {
            message = "Sensational SIX!";
            break;
          }
        case 10:
          {
            message = "TEN RUNS!!!";
            break;
          }
        case 20:
        {
          message = "TWENTY RUNS!!!!!";
          break;
        }
      }
    });
  }

  final List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 10, 20];
  final _random = new Random();

  String winner;

  void incScore(int score) {
    setState(() {
      if (widget.index == 0)
        scores[widget.index] += score;
      else if (widget.index == 1) scores[widget.index] += compChoice;
    });
    setMessage((widget.index == 0) ? score : compChoice);
  }

  void choices(int choice) {
    setState(() {
      playerChoice = choice;
      compChoice = numbers[_random.nextInt(numbers.length)];
      if (playerChoice == compChoice) {
        setMessage(-1);
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
      } else {
        incScore(choice);
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
      child: ListView(
        children: [
          CardWidget(
              text: players[0],
              score: scores[0],
              backColor: Colors.green[100],
              textColor: Colors.green[900]),
          Container(
            color: Colors.amber[50],
            child: Text(
              "$message",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CardWidget(
              text: players[1],
              score: scores[1],
              backColor: Colors.brown[100],
              textColor: Colors.brown[900]),
          SizedBox(height: 10),
          RowButtons(['0', '1', '2'], choices),
          SizedBox(height: 10),
          RowButtons(['3', '4', '5'], choices),
          SizedBox(height: 10),
          RowButtons(['6', '10', '20'], choices),
          SizedBox(height: 10),
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
          SizedBox(height: 15.0),
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
