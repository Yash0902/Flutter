import 'package:flutter/material.dart';

class inkwell extends StatefulWidget {
  const inkwell({super.key});

  @override
  State<inkwell> createState() => _inkwellState();
}

class _inkwellState extends State<inkwell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("InkWell")),

      body: Column(
        children: [
          InkWell(
            onTap: () {
              print("object");
            },
            // splashColor: Colors.red,
            radius: 40,
            hoverColor: Colors.blueAccent,

            customBorder: RoundedRectangleBorder(              // 🔹 rounded clickable area
              borderRadius: BorderRadius.circular(20),
            ),
            autofocus: true,
            // splashFactory: InkRipple.splashFactory,



            child: Container(
              width: double.infinity,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
