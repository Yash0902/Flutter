// import 'package:flutter/material.dart';
//
// class listview extends StatefulWidget {
//   const listview({super.key});
//
//   @override
//   _listviewState createState() => _listviewState();
// }
//
// class _listviewState extends State<listview> {
//   final _controller = ScrollController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("List View")),
//       body: Padding(
//         padding: EdgeInsets.only(left: 0, right: 0),
//
//         child: Column(
//           children: [
//             ListView(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(color: Colors.blue),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(color: Colors.blue),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(color: Colors.blue),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(color: Colors.blue),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(color: Colors.blue),
//                 ),
//               ],
//             ),
//             ListView(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(color: Colors.blue),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(color: Colors.blue),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(color: Colors.blue),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(color: Colors.blue),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   width: double.infinity,
//                   height: 100,
//                   decoration: BoxDecoration(color: Colors.blue),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         //   Listview.Builder
//         //   child: ListView.builder(
//         //   itemExtent:100,
//         //   itemCount: 10,
//         //   itemBuilder: (BuildContext context, int index) {
//         //     return Container(
//         //       margin: EdgeInsets.only(bottom:10),
//         //       width: double.infinity,
//         //       height: 100,
//         //       decoration: BoxDecoration(color: Colors.blue),
//         //     );
//         //   },
//         //
//         // ),
//
//         // ListView.separated
//         // child: ListView.separated(itemBuilder:(BuildContext context , int index){
//         //   return Container(
//         //           margin: EdgeInsets.only(bottom:10),
//         //           width: double.infinity,
//         //           height: 100,
//         //           decoration: BoxDecoration(color: Colors.blue),
//         //         );
//         // }, separatorBuilder: (BuildContext context, int index) => const SizedBox(height:10,), itemCount:10),
//
//         // ListView.custom
//         // child:ListView.custom(
//         //   // itemExtentBuilder: (index, dimensions) => 100 + index.toDouble(),
//         //   padding: const EdgeInsets.all(8),
//         //   childrenDelegate: SliverChildBuilderDelegate(
//         //         (BuildContext context, int index) {
//         //       return Container(
//         //                   margin: EdgeInsets.only(bottom:10),
//         //                   width: double.infinity,
//         //                   height: 100,
//         //                   decoration: BoxDecoration(color: Colors.blue),
//         //                 );
//         //     },
//         //     childCount: 20,
//         //   ),
//         // ),
//
//         // manually by user
//         // child: ListView(
//         //   controller: _controller,
//         //   key: Key('listViewKey'),
//         //   // physics: BouncingScrollPhysics(),
//         //   physics: const BouncingScrollPhysics(
//         //     decelerationRate: ScrollDecelerationRate.normal,
//         //   ),
//         //   shrinkWrap: true,
//         //
//         //   // itemExtent: 100.0,
//         //   // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
//         //   // reverse: true,
//         //   children: [
//         //     Container(
//         //       height: 100,
//         //       width: double.infinity,
//         //       margin: EdgeInsets.only(bottom:10),
//         //       decoration: BoxDecoration(
//         //         gradient: LinearGradient(
//         //           colors: [Colors.red, Colors.orange],
//         //           begin: AlignmentGeometry.topLeft,
//         //           end: Alignment.bottomRight,
//         //         ),
//         //         boxShadow: [
//         //           BoxShadow(
//         //             color: Colors.grey,
//         //             offset: Offset(0, 2),
//         //             spreadRadius: 1,
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //     Container(
//         //       height: 100,
//         //       width: double.infinity,
//         //       margin: EdgeInsets.only(bottom:10),
//         //       decoration: BoxDecoration(
//         //         gradient: LinearGradient(
//         //           colors: [Colors.red, Colors.orange],
//         //           begin: AlignmentGeometry.topLeft,
//         //           end: Alignment.bottomRight,
//         //         ),
//         //         boxShadow: [
//         //           BoxShadow(
//         //             color: Colors.grey,
//         //             offset: Offset(0, 2),
//         //             spreadRadius: 1,
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //     Container(
//         //       height: 100,
//         //       width: double.infinity,
//         //       margin: EdgeInsets.only(bottom:10),
//         //       decoration: BoxDecoration(
//         //         gradient: LinearGradient(
//         //           colors: [Colors.red, Colors.orange],
//         //           begin: AlignmentGeometry.topLeft,
//         //           end: Alignment.bottomRight,
//         //         ),
//         //         boxShadow: [
//         //           BoxShadow(
//         //             color: Colors.grey,
//         //             offset: Offset(0, 2),
//         //             spreadRadius: 1,
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //     Container(
//         //       height: 100,
//         //       width: double.infinity,
//         //       margin: EdgeInsets.only(bottom:10),
//         //       decoration: BoxDecoration(
//         //         gradient: LinearGradient(
//         //           colors: [Colors.red, Colors.orange],
//         //           begin: AlignmentGeometry.topLeft,
//         //           end: Alignment.bottomRight,
//         //         ),
//         //         boxShadow: [
//         //           BoxShadow(
//         //             color: Colors.grey,
//         //             offset: Offset(0, 2),
//         //             spreadRadius: 1,
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //     Container(
//         //       height: 100,
//         //       width: double.infinity,
//         //       margin: EdgeInsets.only(bottom:10),
//         //       decoration: BoxDecoration(
//         //         gradient: LinearGradient(
//         //           colors: [Colors.red, Colors.orange],
//         //           begin: AlignmentGeometry.topLeft,
//         //           end: Alignment.bottomRight,
//         //         ),
//         //         boxShadow: [
//         //           BoxShadow(
//         //             color: Colors.grey,
//         //             offset: Offset(0, 2),
//         //             spreadRadius: 1,
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //     Container(
//         //       height: 100,
//         //       width: double.infinity,
//         //       margin: EdgeInsets.only(bottom:10),
//         //       decoration: BoxDecoration(
//         //         gradient: LinearGradient(
//         //           colors: [Colors.red, Colors.orange],
//         //           begin: AlignmentGeometry.topLeft,
//         //           end: Alignment.bottomRight,
//         //         ),
//         //         boxShadow: [
//         //           BoxShadow(
//         //             color: Colors.grey,
//         //             offset: Offset(0, 2),
//         //             spreadRadius: 1,
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //     Container(
//         //       height: 100,
//         //       width: double.infinity,
//         //       margin: EdgeInsets.only(bottom:10),
//         //       decoration: BoxDecoration(
//         //         gradient: LinearGradient(
//         //           colors: [Colors.red, Colors.orange],
//         //           begin: AlignmentGeometry.topLeft,
//         //           end: Alignment.bottomRight,
//         //         ),
//         //         boxShadow: [
//         //           BoxShadow(
//         //             color: Colors.grey,
//         //             offset: Offset(0, 2),
//         //             spreadRadius: 1,
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //     Container(
//         //       height: 100,
//         //       width: double.infinity,
//         //       margin: EdgeInsets.only(bottom:10),
//         //       decoration: BoxDecoration(
//         //         gradient: LinearGradient(
//         //           colors: [Colors.red, Colors.orange],
//         //           begin: AlignmentGeometry.topLeft,
//         //           end: Alignment.bottomRight,
//         //         ),
//         //         boxShadow: [
//         //           BoxShadow(
//         //             color: Colors.grey,
//         //             offset: Offset(0, 2),
//         //             spreadRadius: 1,
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //     Container(
//         //       height: 100,
//         //       width: double.infinity,
//         //       margin: EdgeInsets.only(bottom:10),
//         //       decoration: BoxDecoration(
//         //         gradient: LinearGradient(
//         //           colors: [Colors.red, Colors.orange],
//         //           begin: AlignmentGeometry.topLeft,
//         //           end: Alignment.bottomRight,
//         //         ),
//         //         boxShadow: [
//         //           BoxShadow(
//         //             color: Colors.grey,
//         //             offset: Offset(0, 2),
//         //             spreadRadius: 1,
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //   ],
//         // ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         height: 100,
//         color: Colors.grey.shade300,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: 70,
//               height: 70,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//             Container(
//               width: 70,
//               height: 70,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//             Container(
//               width: 70,
//               height: 70,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//             Container(
//               width: 70,
//               height: 70,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: ListView.custom(
           childrenDelegate: SliverChildBuilderDelegate(
                  // findChildIndexCallback: ,
                 (BuildContext context, int index) {
                    print("hellow $index");
               return ListTile(
                 leading: Icon(Icons.person),
                 title: Text('Item $index'),
               );
             },
             childCount: 50, // Number of items
           ),
         ),
    );
  }
}
