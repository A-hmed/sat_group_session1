import 'package:flutter/material.dart';

class HeadTile extends StatelessWidget {
  Color purple = Color(0xFF9F3DD8);
  String text;
  HeadTile({this.text = ""});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(4),
          color: purple,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
    );
  }
}
