// // lib/screens/home_screen.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../bloc/counter/counter_bloc.dart';
// import '../bloc/counter/counter_event.dart';
// import '../bloc/counter/counter_state.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final counterBloc = context.read<CounterBloc>();
//
//     return Scaffold(
//       appBar: AppBar(title: const Text("Counter BLoC Example")),
//       body: Center(
//         child: Column(
//           children: [
//             BlocBuilder<CounterBloc, CounterState>(
//               builder: (context, state) {
//                 if (state.isLoading) {
//                   return CircularProgressIndicator();
//                 }
//                 return Text(
//                   'Counter: ${state.counter}',
//                   style: const TextStyle(fontSize: 30),
//                 );
//               },
//             ),
//           ],
//
//           // children: [
//           //   BlocConsumer<CounterBloc, CounterState>(
//           //     listener: (context, state) {
//           //       if (state.counter == 10) {
//           //         ScaffoldMessenger.of(
//           //           context,
//           //         ).showSnackBar(SnackBar(content: Text("this is 10")));
//           //       }
//           //       ;
//           //     },
//           //     builder: (context, state) {
//           //       return Text('Counter: ${state.counter}');
//           //     },
//           //   ),
//           //   Text("hello", style: TextStyle(
//           //      letterSpacing: 4,
//           //       fontWeight:FontWeight.w900,
//           //   )),
//           // ],
//         ),
//
//         // child:Column(
//         //    children: [
//         //      BlocBuilder<CounterBloc, CounterState>(
//         //        builder: (context, state) {
//         //          return Text(
//         //            'Counter: ${state.counter}',
//         //            style: const TextStyle(fontSize: 30),
//         //          );
//         //        },
//         //      ),
//         //
//         //      BlocListener<CounterBloc, CounterState>(
//         //        listener: (context, state) {
//         //          if (state.counter == 10) {
//         //            // Navigator.of(context).push()
//         //            // ScaffoldMessenger.of(context).showSnackBar(
//         //            //   SnackBar(
//         //            //     showCloseIcon: true,
//         //            //     // shape: BeveledRectangleBorder(
//         //            //     //     borderRadius: BorderRadius.circular(10)
//         //            //     // ),
//         //            //     backgroundColor: Colors.red,
//         //            //     hitTestBehavior:HitTestBehavior.deferToChild,
//         //            //       content: Text('Counter reached 10!')),
//         //            // );
//         //          }
//         //        },
//         //        child: Container(),
//         //      )
//         //    ],
//         // ),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () => context.read<CounterBloc>().add(IncrementEvent()),
//             child: const Icon(Icons.add),
//           ),
//           const SizedBox(height: 10),
//           // FloatingActionButton(
//           //   onPressed: () => counterBloc.add(DecrementEvent()),
//           //   child: const Icon(Icons.remove),
//           // ),
//         ],
//       ),
//     );
//   }
// }
