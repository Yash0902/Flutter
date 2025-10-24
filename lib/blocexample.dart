import 'dart:async';

import 'package:flutter/material.dart';

// class CounterBloc {
//   int _counter = 0;
//
//   final _controller = StreamController<int>();
//
//   Stream<int> get counterStream => _controller.stream;
//
//   void increment() {
//     _counter++;
//     _controller.sink.add(_counter);
//   }
//
//   void incrementbyvalue(int value) {
//     _counter += value;
//     // _controller.sink.add(_counter);
//     _controller.sink.add(_counter);
//   }
//
//   void dispose() {
//     _controller.close();
//   }
// }

class TodoBloc {
  // Internal list
  List<String> _todoList = [];

  // StreamController for List<String>
  final _controller = StreamController<List<String>>.broadcast();

  // Stream (Output)
  Stream<List<String>> get todoStream => _controller.stream;

  // Sink (Input) methods
  void addTodo(String task) {
    _todoList.add(task);
    _controller.sink.add(_todoList); // update stream
  }

  void removeTodo(int index) {
    _todoList.removeAt(index);
    _controller.sink.add(_todoList); // update stream
  }

  void dispose() {
    _controller.close();
  }
}


class Blocexample extends StatefulWidget {
  const Blocexample({super.key});

  @override
  State<Blocexample> createState() => _BlocexampleState();
}

class _BlocexampleState extends State<Blocexample> {
  final TextEditingController _controller = TextEditingController();
  final bloc = TodoBloc();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BLoC Todo List")),
      body: Column(
        children: [
          // Input field
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Enter todo",
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      bloc.addTodo(_controller.text);
                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
          ),

          // StreamBuilder to show List
          Expanded(
            child: StreamBuilder<List<String>>(
              stream: bloc.todoStream,
              initialData: const [],
              builder: (context, snapshot) {
                final todos = snapshot.data!;
                return ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(todos[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          bloc.removeTodo(index);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
