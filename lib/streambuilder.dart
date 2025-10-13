// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// class streambuilder extends StatefulWidget {
//   const streambuilder({super.key});
//
//   @override
//   State<streambuilder> createState() => _streambuilderState();
// }
//
// class _streambuilderState extends State<streambuilder> {
//   final StreamController<int> _controller = StreamController<int>();
//   int _counter = 0;
//
//   late final Stream<int> numberStream;
//   @override
//   void initState() {
//     super.initState();
//     Stream.periodic(Duration(seconds: 1), (count) => count);
//   }
//
//   void dispose() {
//     _controller.close();
//     super.dispose();
//   }
//
//   void _incrementCounter() {
//     _counter++;
//     _controller.sink.add(_counter);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Stream Builder Example"),
//         backgroundColor: Colors.blue,
//         animateColor: true,
//       ),
//
//       body: StreamBuilder(
//         stream: numberStream,
//
//         builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator();
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else if (!snapshot.hasData) {
//             return Text('No data yet');
//           } else {
//             return Text(
//               'Number: ${snapshot.data}',
//               style: TextStyle(fontSize: 30),
//             );
//           }
//         },
//
//       ),
//       body: Center(
//         child: StreamBuilder<int>(
//           stream: _controller.stream,
//           initialData: 0,
//           builder: (context, snapshot) {
//             return Text(
//               'Counter: ${snapshot.data}',
//               style: TextStyle(fontSize: 30),
//             );
//           },
//         ),
//       ),
//       bottomNavigationBar: FloatingActionButton(
//         tooltip: "click me",
//         child: Icon(Icons.add),
//         onPressed: _incrementCounter,
//       ),
//
//
//       appBar: AppBar(
//         title: Text("StreamGroup Example"),
//
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'package:async/async.dart';
// import 'package:flutter/material.dart';
// class streambuilder extends StatefulWidget {
//   const streambuilder({super.key});
//
//   @override
//   State<streambuilder> createState() => _streambuilderState();
// }
//
// class _streambuilderState extends State<streambuilder> {
//   late final StreamController<int> _manualController;
//   late final Stream<int> _autoStream;
//   late final Stream<int> _combinedStream;
//
//
//  int _counter = 0;
//    @override
//   void dispose() {
//     _manualController.close();
//     super.dispose();
//   }
//
//   @override
//   void initState() {
//     _manualController = StreamController<int>();
//     _autoStream = Stream.periodic(Duration(seconds: 1), (i) => _counter += i);
//     _combinedStream = StreamGroup.merge([_autoStream, _manualController.stream]);
//     super.initState();
//   }
//
//   void _addManualData() {
//     _counter++;
//     _manualController.sink.add(_counter);
//
//   }
//
//    void addError(Object error){
//       _manualController.sink.addError(error);
//    }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(
//           title: Text("StreamGroup Merge"),
//
//        ),
//       body:StreamBuilder(stream: _combinedStream, builder:(context ,snapshot ){
//         if (!snapshot.hasData) return CircularProgressIndicator();
//         return Text(
//           'Value: ${snapshot.data}',
//           style: TextStyle(fontSize: 30),
//         );
//       }),
//       floatingActionButton:FloatingActionButton(
//          onPressed: _addManualData,
//          child: Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';

class StreamClock extends StatefulWidget {
  const StreamClock({super.key});

  @override
  State<StreamClock> createState() => _StreamClockState();
}

class _StreamClockState extends State<StreamClock> {
  late final Stream<DateTime> _clockStream;

  @override
  void initState() {
    super.initState();
    // Create a Stream that emits current time every second
    _clockStream = Stream.periodic(
      Duration(seconds: 1),
          (_) => DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("⏰ StreamBuilder Clock")),
      body: Center(
        child: StreamBuilder<DateTime>(
          stream: _clockStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }

            // Extract current time
            final time = snapshot.data!;
            final formattedTime =
                "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')}";

            return Text(
              formattedTime,
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StreamClock(),
  ));
}

