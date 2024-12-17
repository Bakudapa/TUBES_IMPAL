import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Page"),
      ),
      body: Center(
        child: Text(
          "Welcome to the Sign Up Page",
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
