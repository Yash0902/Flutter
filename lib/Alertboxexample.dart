import 'package:flutter/material.dart';


class Alertboxexample extends StatefulWidget {
  const Alertboxexample({super.key});

  @override
  State<Alertboxexample> createState() => _AlertboxexampleState();
}

class _AlertboxexampleState extends State<Alertboxexample> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text("AlertDialog Demo")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  icon: const Icon(Icons.warning, size: 40),
                  iconPadding: const EdgeInsets.all(16),
                  iconColor: Colors.red,
                  title: const Text("Important Alert"),
                  titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  titleTextStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87
                  ),

                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        10,
                            (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text("Line ${index + 1}: This is content of the alert dialog.",
                              style: const TextStyle(fontSize: 16)),
                        ),
                      ),
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(24),
                  contentTextStyle:
                  const TextStyle(fontSize: 16, color: Colors.black87),
                  actions: [
                    TextButton(

                      onPressed: () => Navigator.pop(context),
                      child: const Text("Cancel"),
                    ),
                    ElevatedButton(
                      onPressed: (){
                         print("ok");
                         Navigator.pop(context);
                      },
                      child: const Text("OK"),
                    ),
                  ],


                  actionsPadding:const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  actionsAlignment: MainAxisAlignment.end,
                  actionsOverflowAlignment: OverflowBarAlignment.end,
                  actionsOverflowDirection: VerticalDirection.down,
                  actionsOverflowButtonSpacing: 8.0,

                  buttonPadding: const EdgeInsets.all(8),
                  backgroundColor: Colors.blue,
                  elevation: 24,
                  shadowColor: Colors.grey,
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.center,
                  insetPadding: const EdgeInsets.all(24),
                  constraints: const BoxConstraints(
                      minWidth: 280, maxWidth: 560),
                  scrollable: true,
                );
              },
            );
          },
          child: const Text("Show AlertDialog"),
        ),
      ),
    );
  }
}
