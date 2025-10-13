import 'package:flutter/material.dart';

class Refresh extends StatefulWidget {
  const Refresh({super.key});

  @override
  State<Refresh> createState() => _RefreshState();
}

class _RefreshState extends State<Refresh> {
  final List<String> _items = List.generate(20, (index) => "Item $index");

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _items.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refresh Indicator Example"),
        backgroundColor: Colors.blue,
      ),
      body: RefreshIndicator(
        color: Colors.black,
        strokeWidth: 2.0,
        displacement: 50,
        edgeOffset:10,
        // elevation: 3,
        triggerMode: RefreshIndicatorTriggerMode.onEdge,

        child:ListView.builder(
            itemCount: _items.length,
            itemBuilder:(context,index){
              return ListTile(
                title: Text(_items[index]),
              );
            }),
        onRefresh: _refresh,
      ),
    );
  }
}
