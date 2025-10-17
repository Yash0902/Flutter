// // import 'package:flutter/material.dart';
// //
// // class Animationexample extends StatefulWidget {
// //   const Animationexample({super.key});
// //
// //   @override
// //   State<Animationexample> createState() => _AnimationexampleState();
// // }
// //
// // class _AnimationexampleState extends State<Animationexample>
// //     with SingleTickerProviderStateMixin {
// //   bool _showFirst = true;
// //   bool _selected = false;
// //   late AnimationController _controller;
// //   late Animation<double> _animation;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = AnimationController(
// //       duration: Duration(seconds: 2),
// //       vsync: this,
// //     );
// //
// //
// //      _animation = Tween<double>(
// //       begin: 50,
// //       end: 200,
// //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
// //
// //     _controller.addListener(() {
// //       setState(() {}); // Rebuild with new animation value
// //     });
// //
// //     _controller.forward();
// //
// //   }
// //
// //
// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text("Animation Example")),
// //        body:Center(
// //          child: Container(
// //            width: _animation.value,
// //            height: _animation.value,
// //            color: Colors.blueAccent,
// //          ),
// //        ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           // Toggle play and reverse
// //           _controller.status == AnimationStatus.completed
// //               ? _controller.reverse()
// //               : _controller.forward();
// //         },
// //         child: Icon(Icons.play_arrow),
// //       ),
// //
// //       // Column(
// //         //   children: [
// //         //
// //         //     TweenAnimationBuilder<double>(
// //         //       tween: Tween(begin: 0, end: 300),
// //         //       duration: Duration(seconds: 2),
// //         //       curve: Curves.easeInOut,
// //         //       builder: (context, value, child) {
// //         //         return Container(
// //         //           width: value,
// //         //           height: value,
// //         //           color: Colors.red,
// //         //         );
// //         //       },
// //         //     )
// //         //     // GestureDetector(
// //         //     //   onTap: () {
// //         //     //      setState(() {
// //         //     //        _selected = !_selected;
// //         //     //      });
// //         //     //   },
// //         //     //   child: AnimatedAlign(
// //         //     //     alignment: _selected?Alignment.topRight:Alignment.topLeft,
// //         //     //     duration: Duration(seconds: 1),
// //         //     //     curve: Curves.easeInOut,
// //         //     //     child: FlutterLogo(size: 50),
// //         //     //   ),
// //         //     // ),
// //         //     //
// //         //     // Center(
// //         //     //   child: GestureDetector(
// //         //     //     onTap: () {
// //         //     //       setState(() {
// //         //     //         _selected = !_selected;
// //         //     //       });
// //         //     //     },
// //         //     //     child: AnimatedContainer(
// //         //     //       duration: Duration(seconds: 1),
// //         //     //       curve: Curves.easeInOut,
// //         //     //       width: _selected ? 200 : 100,
// //         //     //       height: _selected ? 200 : 100,
// //         //     //       decoration: BoxDecoration(
// //         //     //         color: _selected
// //         //     //             ? Colors.blue
// //         //     //             : Colors.red, // Background color
// //         //     //         borderRadius: BorderRadius.circular(20), // Rounded corners
// //         //     //         boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black26)],
// //         //     //       ),
// //         //     //     ),
// //         //     //   ),
// //         //     // ),
// //         //
// //         //
// //         //
// //         //
// //         //     // GestureDetector(
// //         //     //   onTap: () {
// //         //     //     // Toggle between first and second child
// //         //     //     setState(() {
// //         //     //       _showFirst = !_showFirst;
// //         //     //     });
// //         //     //   },
// //         //     //   child: AnimatedCrossFade(
// //         //     //     firstChild: Container(
// //         //     //       color: Colors.red,
// //         //     //       width: 100,
// //         //     //       height: 100,
// //         //     //       alignment: Alignment.center,
// //         //     //       child: Text(
// //         //     //         'First',
// //         //     //         style: TextStyle(color: Colors.white),
// //         //     //       ),
// //         //     //     ),
// //         //     //     secondChild: Container(
// //         //     //       color: Colors.blue,
// //         //     //       width: 200,
// //         //     //       height: 200,
// //         //     //       alignment: Alignment.center,
// //         //     //       child: Text(
// //         //     //         'Second',
// //         //     //         style: TextStyle(color: Colors.white),
// //         //     //       ),
// //         //     //     ),
// //         //     //     crossFadeState:
// //         //     //     _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
// //         //     //     duration: Duration(seconds: 1),
// //         //     //     firstCurve: Curves.easeIn,
// //         //     //     secondCurve: Curves.easeOut,
// //         //     //     sizeCurve: Curves.easeInOut,
// //         //     //   ),
// //         //     // ),
// //         //
// //         //
// //         //   ],
// //
// //
// //       // ),
// //     );
// //   }
// // }
//
//
// import 'package:flutter/material.dart';
//
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _fadeController;
//   late AnimationController _moveController;
//   late Animation<double> _fadeAnimation;
//   late Animation<Alignment> _moveAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//
//     // Fade animation (logo appear)
//     _fadeController =
//         AnimationController(vsync: this, duration: Duration(seconds: 2));
//     _fadeAnimation =
//         CurvedAnimation(parent: _fadeController, curve: Curves.easeIn);
//
//     // Move animation (logo top par move)
//     _moveController =
//         AnimationController(vsync: this, duration: Duration(seconds: 1));
//     _moveAnimation = AlignmentTween(
//       begin: Alignment.center,
//       end: Alignment.topCenter,
//     ).animate(CurvedAnimation(parent: _moveController, curve: Curves.easeInOut));
//
//     startAnimation();
//   }
//
//   void startAnimation() async {
//     await _fadeController.forward(); // fade in logo
//     await Future.delayed(Duration(seconds: 1));
//     await _moveController.forward(); // move logo top
//     await Future.delayed(Duration(milliseconds: 500));
//
//     // After animation complete → go to login page with fade transition
//     Navigator.of(context).pushReplacement(PageRouteBuilder(
//       transitionDuration: Duration(seconds: 1),
//       pageBuilder: (context, animation, secondaryAnimation) => FadeTransition(
//         opacity: animation,
//         child: LoginPage(),
//       ),
//     ));
//   }
//
//   @override
//   void dispose() {
//     _fadeController.dispose();
//     _moveController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: AnimatedBuilder(
//         animation: _moveAnimation,
//         builder: (context, child) {
//           return Align(
//             alignment: _moveAnimation.value,
//             child: FadeTransition(
//               opacity: _fadeAnimation,
//               child:Icon(Icons.flutter_dash, size: 100, color: Colors.blue),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
//
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(vsync: this, duration: Duration(seconds: 1));
//     _fadeAnimation =
//         CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
//
//     _controller.forward();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: FadeTransition(
//         opacity: _fadeAnimation,
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Welcome Back 👋",
//                     style:
//                     TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//                 SizedBox(height: 30),
//                 TextField(
//                   decoration: InputDecoration(labelText: "Email"),
//                 ),
//                 TextField(
//                   decoration: InputDecoration(labelText: "Password"),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: Text("Login"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation Example")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: (_isVisible ?? false) ? 1.0 : 0.0,
                duration: Duration(seconds: 2),
                curve: Curves.easeIn,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
                child: Text("Click Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
