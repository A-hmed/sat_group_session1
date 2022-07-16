import 'package:flutter/material.dart';
import 'package:session_flutter_c6/calculator/CalcluatorButton.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = "" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                result.isEmpty ?"0.0":result,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton(text: "7", onPressed: onDigitClicked),
              CalculatorButton(text: "8", onPressed: onDigitClicked),
              CalculatorButton(text: "9", onPressed: onDigitClicked),
              CalculatorButton(text: "*", onPressed: onOperatorClicked),
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton(text: "4", onPressed: onDigitClicked),
              CalculatorButton(text: "5", onPressed: onDigitClicked),
              CalculatorButton(text: "6", onPressed: onDigitClicked),
              CalculatorButton(text: "/", onPressed: onOperatorClicked),
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton(text: "1", onPressed: onDigitClicked),
              CalculatorButton(text: "2", onPressed: onDigitClicked),
              CalculatorButton(text: "3", onPressed: onDigitClicked),
              CalculatorButton(text: "-", onPressed: onOperatorClicked),
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorButton(text: ".", onPressed: onDigitClicked),
              CalculatorButton(text: "0", onPressed: onDigitClicked),
              CalculatorButton(text: "+", onPressed: onOperatorClicked),
              CalculatorButton(text: "=", onPressed: onEqualClick),
            ],
          ))
        ],
      ),
    );
  }
  String LHS ="";
  String operator = "";
  void onDigitClicked(String digit) {
    if(digit == "." && result.contains(".")){
      return;
    }
    result += digit;
    setState(() {});
  }
  void onOperatorClicked(String clickedOperator) {
    if(operator.isEmpty){
      LHS = result;
      operator = clickedOperator;
      result = "";
      setState(() {});
    }else {
      String RHS = result;
      double res =calculate(LHS, operator, RHS);
      LHS = res.toString();
      operator = clickedOperator;
      result = "";
      setState(() {});
    }
     print(LHS);
  }

  void onEqualClick(_){
    double res = calculate(LHS, operator, result);
    result = res.toString();
    operator = "";
    LHS = "";
    setState(() {});
  }

  double calculate(String LHS, String operator, String RHS) {
    double lhs = double.parse(LHS);
    double rhs = double.parse(RHS);
    if(operator == "+"){
      return lhs + rhs;
    }else if(operator == "-"){
      return lhs - rhs;
    }else if(operator == "*"){
      return lhs * rhs;
    }else {
      return lhs / rhs;
    }
  }
}
