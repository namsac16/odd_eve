import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function indexHandler;
  final String winner;
  final int pScore;
  final int cScore;

  Result(this.indexHandler, this.winner, this.pScore, this.cScore);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.black,
                elevation: 20.0,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
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
                                  color: Colors.amber),
                            )
                          : Text(
                              "$winner wins this Game",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                              textAlign: TextAlign.center,
                            ),
                      SizedBox(height: 25),
                      Text(
                        "Player Score: $pScore",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Computer Score: $cScore",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 200,
        child: FloatingActionButton(
          onPressed: indexHandler,
          child: Text(
            "Play Again",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.amber,
          shape: BeveledRectangleBorder(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
