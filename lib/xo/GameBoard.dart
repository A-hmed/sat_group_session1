import 'package:flutter/material.dart';
import 'package:session_flutter_c6/xo/SplashScreen.dart';
import 'package:session_flutter_c6/xo/XoButton.dart';

class GameBoard extends StatefulWidget {
  static String RouteName = "GameBoard";
  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<String> board = ["", "", "", "", "", "", "", "", ""];
  int player1Score = 0;
  int player2Score = 0;

  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xo board"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(top: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  Text(
                    "${args["player1"]}: $player1Score",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text("${args["player2"]}: $player2Score",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(
                  symbol: board[0],
                  onPressed: onButtonClicked,
                  index: 0,
                ),
                XoButton(
                  symbol: board[1],
                  onPressed: onButtonClicked,
                  index: 1,
                ),
                XoButton(
                  symbol: board[2],
                  onPressed: onButtonClicked,
                  index: 2,
                ),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(
                    symbol: board[3], onPressed: onButtonClicked, index: 3),
                XoButton(
                  symbol: board[4],
                  onPressed: onButtonClicked,
                  index: 4,
                ),
                XoButton(
                  symbol: board[5],
                  onPressed: onButtonClicked,
                  index: 5,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(
                  symbol: board[6],
                  onPressed: onButtonClicked,
                  index: 6,
                ),
                XoButton(
                  symbol: board[7],
                  onPressed: onButtonClicked,
                  index: 7,
                ),
                XoButton(
                  symbol: board[8],
                  onPressed: onButtonClicked,
                  index: 8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  int counter = 0;

  onButtonClicked(int index) {
    if (board[index].isNotEmpty) return;
    String symbol = counter % 2 == 0 ? "O" : "X";
    board[index] = symbol;
    counter++;
    setState(() {});
    if(checkWinner(symbol)){
      if(symbol == "X"){
        player2Score++;
      }else{
        player1Score++;
      }
      resetBoard();
    }
    if(counter == 9){
      resetBoard();
    }

  }

  void resetBoard(){
   board = ["", "", "", "", "", "", "", "", ""];
   counter = 0;
   setState(() {});
  }

  bool checkWinner(String symbol) {
    for (int i = 0; i < 9; i = i + 3) {
      if (board[i] == symbol &&
          board[i + 1] == symbol &&
          board[i + 2] == symbol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (board[i] == symbol &&
          board[i + 3] == symbol &&
          board[i + 6] == symbol) {
        return true;
      }
    }
    if (board[0] == symbol && board[4] == symbol && board[8] == symbol) {
      return true;
    }
    if (board[2] == symbol && board[4] == symbol && board[6] == symbol) {
      return true;
    }
    return false;
  }
}
