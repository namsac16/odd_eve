import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Function indexHandler;

  HomeScreen(this.indexHandler);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      "ODD",
                      style: TextStyle(
                          color: Colors.amber,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 100),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
                color: Colors.amber,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "EVE",
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 100),
                        ),
                      ),
                      SizedBox(height: 20)
                    ])),
          )
        ],
      ),
      floatingActionButton: Container(
        width: 100,
        child: FloatingActionButton(
          onPressed: indexHandler,
          child: Text(
            "Play",
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
