import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toastexample extends StatefulWidget {
  const Toastexample({super.key});

  @override
  State<Toastexample> createState() => _ToastexampleState();
}

class _ToastexampleState extends State<Toastexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toast Example")),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "This is a Toast message",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,

            );
          },

          child: Row(children: [Icon(Icons.person), Text("Click Me")]),
        ),
      ),
    );
  }
}
