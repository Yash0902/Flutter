import 'package:flutter/material.dart';
class wrapview extends StatefulWidget {
  const wrapview({super.key});

  @override
  State<wrapview> createState() => _wrapviewState();
}

class _wrapviewState extends State<wrapview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
          title:Text("Wrapview")
       ),
       body:Padding(
           padding: EdgeInsets.all(11),
           child:Wrap(
             // direction: Axis.vertical,
             // alignment: WrapAlignment.spaceEvenly,
             // runAlignment:WrapAlignment.end,
             // runSpacing:20,
             // spacing: 8,
             // clipBehavior:Clip.none,
             // textDirection: TextDirection.rtl,
             clipBehavior: Clip.hardEdge,
             verticalDirection: VerticalDirection.up,
              children: [
                Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                    child:Center(child: Text("W1"))
                ),
                Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                    child:Center(child: Text("W2"))
                ),
                Container(
                    color: Colors.teal,
                    width: 100,
                    height: 100,
                    child:Center(child: Text("W3"))
                ),
                Container(
                    color: Colors.indigo,
                    width: 100,
                    height: 100,
                    child:Center(child: Text("W4"))
                ),
                Container(
                    color: Colors.orange,
                    width: 100,
                    height: 100,
                    child:Center(child: Text("W5"))
                ),
                // Container(
                //     color: Colors.teal,
                //     width: 100,
                //     height: 100,
                //     child:Center(child: Text("W5"))
                // ),
                // Container(
                //     color: Colors.indigo,
                //     width: 100,
                //     height: 100,
                //     child:Center(child: Text("W5"))
                // ),
              ],
           ),
       ),
    );
  }
}
