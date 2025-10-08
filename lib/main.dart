import 'package:container_widget/imageview.dart';
import 'package:container_widget/rowcolumn.dart';
import 'package:container_widget/scrollview.dart';
import 'package:flutter/material.dart';
import './container.dart';
import './mycard.dart';
import './Mytext.dart';
import  './textformfield.dart';
import  './listview.dart';
import './gridview.dart';
import  './wrapview.dart';
import  './drawer.dart';
import  './customdrawer.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


          theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title:"Listview",
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:imageview()
      ),
    );
  }
}

