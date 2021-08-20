import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  final List<String> buttons;
  final Function choiceHandler;

  RowButtons(this.buttons, this.choiceHandler);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: (){
            choiceHandler(int.parse(buttons[0]));
          },
          child: Text(buttons[0]),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            onPrimary: Colors.amber,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            choiceHandler(int.parse(buttons[1]));
          },
          child: Text(buttons[1]),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            onPrimary: Colors.amber,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            choiceHandler(int.parse(buttons[2]));
          },
          child: Text(buttons[2]),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            onPrimary: Colors.amber,
          ),
        ),
      ],
    );
  }
}
