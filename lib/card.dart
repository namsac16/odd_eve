import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String text;
  final int score;
  final Color backColor;
  final Color textColor;

  CardWidget({this.text, this.score, this.backColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 175,
        child: Card(
          borderOnForeground: true,
          elevation: 50.0,
          color: backColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: textColor),
                textAlign: TextAlign.center,
              ),
              //SizedBox(height: 30),
              Text(
                "SCORE: $score",
                style: TextStyle(
                    color: textColor, fontSize: 50, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
