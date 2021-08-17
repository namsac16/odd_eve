import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Function indexHandler;

  HomeScreen(this.indexHandler);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.indigo[50],
          Colors.indigo[300],
          Colors.indigo[500]
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "ODD",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 100),
              ),
            ),
            Center(
              child: Text(
                "EVE",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 100),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              color: Colors.indigoAccent,
              minWidth: 100,
              onPressed: indexHandler,
              child: Text(
                "Play",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
