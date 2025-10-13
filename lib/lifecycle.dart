import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class lifecycle extends StatefulWidget {
  const lifecycle({super.key});

  @override
  State<lifecycle> createState() => _lifecycleState();
}

class _lifecycleState extends State<lifecycle> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    void initState() {
      print("initstate");
    }

    void dispose() {
      print("disposestate");
    }

    @override
    void didChangeDependencies() {
      super.didChangeDependencies();
      print("didChangeDependencies");
    }

    @override
    void didUpdateWidget(lifecycle oldWidget) {
      super.didUpdateWidget(oldWidget);
      print("didupdateWidget");
    }

    @override
    void deactivate() {
      super.deactivate();
      print("deactivate");
    }

    return Scaffold(
      appBar: AppBar(title: Text("hello")),
      body: InkWell(
        onTap: () {
          setState(() {
            count++;
          });
        },
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text("count :- $count"),
        ),
      ),
    );
  }
}
