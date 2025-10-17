import 'package:flutter/material.dart';

class Animationexample extends StatefulWidget {
  const Animationexample({super.key});

  @override
  State<Animationexample> createState() => _AnimationexampleState();
}

class _AnimationexampleState extends State<Animationexample> {
  bool _showFirst = true;
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation Example")),
      body: Column(
        children: [

          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 300),
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            builder: (context, value, child) {
              return Container(
                width: value,
                height: value,
                color: Colors.red,
              );
            },
          )
          // GestureDetector(
          //   onTap: () {
          //      setState(() {
          //        _selected = !_selected;
          //      });
          //   },
          //   child: AnimatedAlign(
          //     alignment: _selected?Alignment.topRight:Alignment.topLeft,
          //     duration: Duration(seconds: 1),
          //     curve: Curves.easeInOut,
          //     child: FlutterLogo(size: 50),
          //   ),
          // ),
          //
          // Center(
          //   child: GestureDetector(
          //     onTap: () {
          //       setState(() {
          //         _selected = !_selected;
          //       });
          //     },
          //     child: AnimatedContainer(
          //       duration: Duration(seconds: 1),
          //       curve: Curves.easeInOut,
          //       width: _selected ? 200 : 100,
          //       height: _selected ? 200 : 100,
          //       decoration: BoxDecoration(
          //         color: _selected
          //             ? Colors.blue
          //             : Colors.red, // Background color
          //         borderRadius: BorderRadius.circular(20), // Rounded corners
          //         boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black26)],
          //       ),
          //     ),
          //   ),
          // ),




          // GestureDetector(
          //   onTap: () {
          //     // Toggle between first and second child
          //     setState(() {
          //       _showFirst = !_showFirst;
          //     });
          //   },
          //   child: AnimatedCrossFade(
          //     firstChild: Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 100,
          //       alignment: Alignment.center,
          //       child: Text(
          //         'First',
          //         style: TextStyle(color: Colors.white),
          //       ),
          //     ),
          //     secondChild: Container(
          //       color: Colors.blue,
          //       width: 200,
          //       height: 200,
          //       alignment: Alignment.center,
          //       child: Text(
          //         'Second',
          //         style: TextStyle(color: Colors.white),
          //       ),
          //     ),
          //     crossFadeState:
          //     _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          //     duration: Duration(seconds: 1),
          //     firstCurve: Curves.easeIn,
          //     secondCurve: Curves.easeOut,
          //     sizeCurve: Curves.easeInOut,
          //   ),
          // ),


        ],
      ),
    );
  }
}
