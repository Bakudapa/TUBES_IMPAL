import 'package:flutter/material.dart';
import 'src/features/authentication/screens/welcome/welcome.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(), // Pastikan WelcomePage juga mendukung const jika mungkin
    );
  }
}

