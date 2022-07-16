import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session_flutter_c6/xo/GameBoard.dart';
import 'package:session_flutter_c6/xo/SplashScreen.dart';
import 'calculator/Calculator.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.RouteName :(_)=> SplashScreen(),
        GameBoard.RouteName : (_)=> GameBoard()
      },
      initialRoute: SplashScreen.RouteName,
    );
  }
}
