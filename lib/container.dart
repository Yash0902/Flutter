import 'package:flutter/material.dart';

class container extends StatelessWidget {
  const container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Practice :-")),
      body: Center(
        child: Column(
          children: [
            // Container(
            //   margin: const EdgeInsets.all(10.0),
            //   width: 70.0,
            //   height: 70.0,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(12),
            //     border: Border.all(),
            //     gradient: LinearGradient(colors: [Colors.blue, Colors.red])
            //   ),
            //   child: Center(child: Text("yash")),
            // ),
            Text(
              "Welcome to Flutter",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            RichText(
               text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Hello",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: "World!",
                      style: TextStyle(
                        color: Colors.red,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ]
               ),

            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(color: Colors.red),
              foregroundDecoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2017/06/08/17/43/blue-2384333_1280.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 150.0,
              height: 150.0,
              // transform: Matrix4.rotationZ(1),
              decoration: BoxDecoration(
                color: Colors.blue,

                borderRadius: BorderRadius.all(Radius.circular(10)),

                // borderRadius: BorderRadius.all(Radius.circular(30)),

                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(30),
                //   bottomRight: Radius.circular(30),
                // ),

                // borderRadius: BorderRadius.horizontal(left:Radius.circular(20)),

                // borderRadius: BorderRadius.vertical(top: Radius.circular(10)),

                // borderRadius:BorderRadius.only(
                //      topLeft:Radius.elliptical(40 , 20),
                // )
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(10, 4),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],

                // gradient: LinearGradient(
                //   colors:[Colors.red,Colors.yellow],
                //   begin:Alignment.topLeft ,
                //   end: Alignment.bottomLeft,
                // )

                // gradient: RadialGradient(
                //   colors: [Colors.yellow, Colors.orange, Colors.red],
                //   radius: 0.8, // spread control
                // ),

                // gradient: SweepGradient(
                //   colors: [Colors.purple, Colors.blue, Colors.green, Colors.yellow, Colors.red, Colors.purple],
                // ),
              ),

              // child: Center(
              //   child: Text(
              //     "yash",
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //       decoration: TextDecoration.underline,
              //       decorationColor: Colors.red,
              //       decorationStyle: TextDecorationStyle.wavy,
              //     ),
              //   ),
              // ),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   colors: [Colors.red, Colors.yellow],
                    // ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(-4, -4),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(4, 4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("Home"), Text("about"), Text("gallery")],
          ),
        ),
      ),
    );
  }
}
