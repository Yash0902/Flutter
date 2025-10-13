import 'package:flutter/material.dart';
class Visiblityexample extends StatefulWidget {
  const Visiblityexample({super.key});

  @override
  State<Visiblityexample> createState() => _VisiblityexampleState();
}

class _VisiblityexampleState extends State<Visiblityexample> {

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Visibility Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isVisible,
              replacement: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(child: Text("Replacement")),
              ),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Text("Toggle Visibility"),
            ),
          ],
        ),
      )
    );
  }
}
