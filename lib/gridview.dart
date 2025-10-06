import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  final ScrollController _scrollController = ScrollController();
  // List<bool> checked = List.generate(50, (index) => false);


  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(title: Text("ListView Property Demo")),
      body: ListView.builder(
        itemCount: 50,
        // 👇 Try changing these values to see the difference
        // addAutomaticKeepAlives: false, // maintain state when off-screen
        // addRepaintBoundaries: true,   // improve performance
        // addSemanticIndexes: true,     // for accessibility
        // cacheExtent: 300,             // pre-load ahead items (300px)

        itemBuilder: (context, index) {
          print("Building item $index"); // console se pata chalega rebuild ho raha ya nahi


          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(child: Text("${index + 1}")),
              title: Text("Item $index"),
              subtitle: Text("Scroll to see keepAlive effect"),

            ),
          );
        },
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //       title: Text("Grid View", style: TextStyle(fontSize: 30)),
    //    ),
    //   body: Padding(
    //     padding: EdgeInsetsGeometry.all(10),
    //     // child: GridView(
    //     //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     //     crossAxisCount: 3,
    //     //     mainAxisSpacing:10,
    //     //     crossAxisSpacing: 10,
    //     //
    //     //   ),
    //     //   children: [
    //     //     Container(width: 50, height: 50, color: Colors.red),
    //     //     Container(width: 50, height: 50, color: Colors.blue),
    //     //     Container(width: 50, height: 50, color: Colors.blue),
    //     //     Container(width: 50, height: 50, color: Colors.red),
    //     //   ],
    //     // ),
    //
    //     child:GridView.builder(
    //       shrinkWrap: true,
    //       controller: _scrollController,
    //       scrollDirection: Axis.vertical,
    //       clipBehavior: Clip.hardEdge,
    //       keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    //       addAutomaticKeepAlives: true,
    //       cacheExtent: 500,
    //       // reverse: true,
    //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //           maxCrossAxisExtent:200,
    //           mainAxisSpacing: 10,
    //           crossAxisSpacing: 10,
    //           mainAxisExtent: 150,
    //           childAspectRatio: 1,
    //
    //       ),
    //       itemCount: 20,
    //       itemBuilder: (context, index) {
    //         return Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Container(
    //             color: Colors.green,
    //             child: Center(
    //               child: Text("Builder: $index",
    //                 style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 20
    //                 ),
    //               ),
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
