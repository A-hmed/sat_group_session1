import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "Home");
          }, child: Text("Go to Home Screen"),),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "Register");
          }, child: Text("Register"),)
        ],
      ),
    );
  }
}
