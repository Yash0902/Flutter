import 'package:flutter/material.dart';

class gestureDetector extends StatefulWidget {
  const gestureDetector({super.key});

  @override
  State<gestureDetector> createState() => _gestureDetectorState();
}

class _gestureDetectorState extends State<gestureDetector> {

  int _position = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gesture Example & InkWell",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            Text("Gesture Example", style: TextStyle(fontSize: 20)),
            GestureDetector(
              onTap: () {
                print("ontap");
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                child: Text("ontap"),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
            GestureDetector(
              onDoubleTap: () {
                print("onDoubleTap");
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                child: Text("onDoubleTap"),
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
            GestureDetector(
              onLongPress: () {
                print("onLongPress");
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                child: Text("onLongPress"),
                decoration: BoxDecoration(color: Colors.yellow),
              ),
            ),
            GestureDetector(
              onPanDown: (details) {
                print(details.globalPosition);
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                child: Text("onPanDown"),
                decoration: BoxDecoration(color: Colors.pink),
              ),
            ),
            GestureDetector(
              onPanUpdate: (details) {
                setState(() {

                });

              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                child: Text("onPanUpdate"),
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),

            GestureDetector(
              onPanEnd: (details) {
                print("Pan ended with velocity: ${details.velocity}");
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                child: Text("onPanEnd"),
                decoration: BoxDecoration(color: Colors.brown),
              ),
            ),
            GestureDetector(
              onHorizontalDragEnd: (details) {
                print("Drag End with velocity: ${details.velocity.pixelsPerSecond.dx}");
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                child: Text("onHorizontalDragEnd"),
                decoration: BoxDecoration(color: Colors.blueAccent),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
