import 'package:flutter/material.dart';

import './home.dart';
import './game.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int index = -1;

  void incIndex() {
    setState(() {
      index++;
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
            : (index < 2)
                ? GamePage(index, incIndex)
                : Result("Player"),
      ),
    );
  }
}
