// import 'package:flutter/material.dart';
//
// class mycard extends StatelessWidget {
//   const mycard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text(
//           "Flutter Practice:-",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Container(
//         width: double.infinity,
//         height: 200,
//         margin: const EdgeInsets.all(20),
//
//
//         alignment: Alignment.bottomCenter,
//         decoration: BoxDecoration(
//           color: Colors.green.shade50,
//            // gradient: LinearGradient(
//            //      colors: [Colors.red,Colors.yellow],
//            //   begin: Alignment.topRight,
//            //   end: Alignment.bottomRight,
//            //   stops: [0.4,0.7]
//            //  )
//         ),
//         child:Row(
//             children: [
//                Expanded(
//                    flex: 1,
//                    child:Container(
//                        height:double.infinity,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa4oM937hHe9rMkWobp_O0UeV-AzYMiG1mKg&s'),fit: BoxFit.cover),
//                         ),
//
//                        child:Text("Text On Background Image",style:TextStyle(
//                             fontSize:30,
//                             fontWeight:FontWeight.w800,
//                         )),
//        s            )
//                ),
//               Expanded(
//                   flex: 1,
//                   child:Container(
//                     height:double.infinity,
//
//                     decoration: BoxDecoration(
//                         gradient:LinearGradient(
//                           colors: [Colors.red,Colors.yellow],
//                           begin:Alignment.bottomLeft,
//                           end: Alignment.topCenter,
//                         )
//                     ),
//
//                   )
//               )
//             ],
//         )
//
//       ),
//     );
//   }
// }
