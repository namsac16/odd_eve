import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String winner;

  Result(this.winner);

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
              Text(
                "$winner wins this Game",
                style: TextStyle(
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[500]),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
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
