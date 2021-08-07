import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  final List<String> buttons;
  final Function scoreHandler;
  final Function choiceHandler;

  RowButtons(this.buttons, this.scoreHandler, this.choiceHandler);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: (){
            choiceHandler(int.parse(buttons[0]));
            scoreHandler(int.parse(buttons[0]));
          },
          child: Text(buttons[0]),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue[900],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            choiceHandler(int.parse(buttons[1]));
            scoreHandler(int.parse(buttons[1]));
          },
          child: Text(buttons[1]),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue[900],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            choiceHandler(int.parse(buttons[2]));
            scoreHandler(int.parse(buttons[2]));
          },
          child: Text(buttons[2]),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue[900],
          ),
        ),
      ],
    );
  }
}
