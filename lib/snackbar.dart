import 'package:flutter/material.dart';
class Snackbar extends StatefulWidget {
  const Snackbar({super.key});

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBar Demo")),
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    
                    content:Container(
                     child: Text("hello"),
                    ),
                    action:SnackBarAction(
                      label: "UNDO",
                      onPressed: () => print("Undo pressed!"),
                      textColor: Colors.yellow,
                    ),

                    dismissDirection: DismissDirection.horizontal,
                    behavior: SnackBarBehavior.floating,
                    showCloseIcon: true,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                  ),
                );
              },
              child: Text("Show SnackBar",style:TextStyle(
                 color: Colors.black,
              ),),
            ),
          );
        },
      ),
    );
  }
}
