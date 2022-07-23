import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String text;
  Function onPressed;

  CalculatorButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: Colors.amber,
            margin: EdgeInsets.all(2),
            child: ElevatedButton(
                onPressed: () {
                  onPressed(text);
                },
                child: Text(
                  text,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))));
  }
}
