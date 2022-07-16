import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Counter $counter")
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

            counter++;
            setState(() {});
          print(counter);
          },
          child:Text("+"),
        ),
      ),
    );
  }
}
