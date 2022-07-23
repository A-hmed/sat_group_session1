import 'package:flutter/material.dart';
import 'package:session_flutter_c6/xo/GameBoard.dart';

class SplashScreen extends StatelessWidget {
  static String RouteName= "Splash";
  String player1= "";
  String player2 = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text("Splash"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              onChanged: (text){
                player1 = text;
              },
              decoration: const InputDecoration(
                hintText: "Please write player 1 "
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            child: TextField(
              onChanged: (text){
                player2 = text;
              },
              decoration: const InputDecoration(
                  hintText: "Please write player 2 "
              ),
            ),
          ),
          const Spacer(),
          Container(
              margin: const EdgeInsets.all(24),
              child: ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, GameBoard.RouteName,
                    arguments:{"player1": player1, "player2": player2});
              }, child: const Text("Start")))
        ],
      ),
    );
  }
}
class GameBoardArguments{
  String player1;
  String player2;
  GameBoardArguments(this.player1,this.player2);
}
