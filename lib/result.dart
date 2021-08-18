import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function indexHandler;
  final String winner;
  final int pScore;
  final int cScore;

  Result(this.indexHandler, this.winner, this.pScore, this.cScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 200.0,
        padding: EdgeInsets.all(10),
        //margin: EdgeInsets.all(10),
        child: Card(
          color: Colors.blue[100],
          elevation: 20.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              winner == "Tie"
                  ? Text(
                      "The Game is Tied",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple[500]),
                    )
                  : Text(
                      "$winner wins this Game",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple[500]),
                    ),
              SizedBox(height: 5),
              Text(
                "Player Score: $pScore",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[500]),
              ),
              SizedBox(height: 5),
              Text(
                "Computer Score: $cScore",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[500]),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: indexHandler,
                child: Text(
                  "Play Again",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
