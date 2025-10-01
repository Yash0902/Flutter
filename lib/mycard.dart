import 'package:flutter/material.dart';
class mycard extends StatelessWidget {
  const mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
           title: Text("Flutter Practice"),
        ),
        body: Center(
          child: Card(
            color: Colors.blue[100],
            shadowColor: Colors.black,
            elevation: 10,
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Flutter Card", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  Text("This card has custom color, margin, and shadow."),
                ],
              ),
            ),
          )
        ),

    );
  }
}
