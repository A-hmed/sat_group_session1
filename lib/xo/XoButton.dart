import 'package:flutter/material.dart';

class XoButton extends StatelessWidget {
  String symbol;
  int index;
  Function onPressed;
  XoButton({required this.symbol, required this.onPressed, required this.index});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.all(8),
            child: ElevatedButton(
                onPressed: () {
                  onPressed(index);
                }, child: Text("$symbol"))));
  }
}
