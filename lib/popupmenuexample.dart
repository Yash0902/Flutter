import 'package:flutter/material.dart';

class Popupmenuexample extends StatefulWidget {
  const Popupmenuexample({super.key});

  @override
  State<Popupmenuexample> createState() => _PopupmenuexampleState();
}

class _PopupmenuexampleState extends State<Popupmenuexample> {
  var _selected;
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert!!"),
          content: const Text("You are awesome!"),
          actions: [
            MaterialButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopUp Menu Example"),
        actions: [
          PopupMenuButton(
            initialValue: _selected,
            // color: Colors.blue,
            onSelected: (value){
               _selected = value;
            },
            //
            // onOpened: (){
            //     print("onopen");
            // },
            //
            // onCanceled: (){
            //     print("cancelled");
            // },
            tooltip: 'Open menu',
            elevation: 8,
            shadowColor: Colors.black54,
            surfaceTintColor: Colors.red,
            borderRadius: BorderRadius.circular(40),
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            offset: const Offset(0, 40),
            color: Colors.blue,

            constraints: const BoxConstraints(maxHeight: 300, minWidth: 150),

            // clipBehavior: Clip.none,
            // position: PopupMenuPosition.over,
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {
                  _showDialog(context);
                },
                value: 1,

                child: Row(
                  children: [
                    const Icon(Icons.star),
                    SizedBox(width: 10),
                    const Text("Get The App"),
                  ],
                ),
              ),

              PopupMenuItem(
                onTap: () {
                  _showDialog(context);
                },
                value: 2,

                child: Row(
                  children: [
                    const Icon(Icons.star),
                    SizedBox(width: 10),
                    const Text("Get The App"),
                  ],
                ),
              ),

              PopupMenuItem(
                onTap: () {
                  _showDialog(context);
                },
                value: 3,

                child: Row(
                  children: [
                    const Icon(Icons.star),
                    SizedBox(width: 10),
                    const Text("Get The App"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
