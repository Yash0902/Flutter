import 'package:flutter/material.dart';

class Buttonview extends StatefulWidget {
  const Buttonview({super.key});

  @override
  State<Buttonview> createState() => _ButtonviewState();
}

class _ButtonviewState extends State<Buttonview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black,
              disabledForegroundColor: Colors.red,
              disabledBackgroundColor: Colors.black12,
              shadowColor: Colors.blue,
              elevation: 5,
              surfaceTintColor: Colors.blueAccent,
              iconColor: Colors.yellow,
              alignment: Alignment.center,
              side: BorderSide(color: Colors.red, width: 2),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              // enabledMouseCursor: SystemMouseCursors.click,
              enableFeedback: true,
            ),
            onPressed: () {},
            child: Text("click me"),
          ),
        ],
      ),
    );
  }
}
