import 'package:flutter/material.dart';
import './container.dart';
import './mycard.dart';
import './Mytext.dart';
import  './textformfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:textformfield()
      ),
    );
  }
}
