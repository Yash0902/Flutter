import 'package:flutter/material.dart';
class mycard extends StatelessWidget {
  const mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Flutter Practice:-",
          style: TextStyle(color: Colors.white),
        ),
      ),
        body:Container(
          width: double.infinity,
          height: 100,
           margin:const EdgeInsets.all(20),
           padding: const EdgeInsets.all(10),

          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
             color: Colors.green,


           ),
             child:Text("Hello! I am inside a container!",style: TextStyle(fontSize: 20,color: Colors.white),),
        )

    );
  }
}
