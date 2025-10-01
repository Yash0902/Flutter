import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  const Mytext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
            Text("Flutter", style:TextStyle(
               fontSize: 20,
            )),
            RichText(text:TextSpan(
                 children: [
                   TextSpan(
                     text: "Hello",
                     style: TextStyle(
                       color: Colors.blue,
                       fontWeight: FontWeight.bold,
                       fontSize: 14,
                     ),
                   ),
                   TextSpan(
                     text: "World",
                     style: TextStyle(
                       color: Colors.red,
                       fontWeight: FontWeight.bold,
                       fontSize: 14,
                     ),
                   ),
                 ]
            )),
           Padding(
              padding: EdgeInsets.all(1),
              child: Text("Welcome to flutter",style: TextStyle(
             )),
             )
        ],
      ),
    );
  }
}
