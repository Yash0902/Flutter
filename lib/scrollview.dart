import 'package:container_widget/listview.dart';
import 'package:flutter/material.dart';
class scrollview extends StatefulWidget {
  const scrollview({super.key});

  @override
  State<scrollview> createState() => _scrollviewState();
}

class _scrollviewState extends State<scrollview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
           title: Text("Scrollview"),
       ),
      body:SingleChildScrollView(
          // child: Column(
          //   children: List.generate(20, (index) => Text("Item $index")),
          // ),
        // scrollDirection: Axis.horizontal,
        // child: Row(
        //   children: List.generate(20, (index) => Container(width: 100, color: Colors.blue, margin: EdgeInsets.all(5))),
        // ),

        // reverse: true,
        // child: Column(
        //   children: List.generate(50, (index) => Text("Message $index")),
        // ),

        // padding: EdgeInsets.all(16),
        // child: Column(
        //   children: List.generate(50, (index) => Text("Message $index")),
        // ),


        // child: Column(
        //   children:  List.generate(20, (index) => Container(width: 100, height:100,color: Colors.blue, margin: EdgeInsets.all(5))),
        // ),


      ),

    );
  }
}

