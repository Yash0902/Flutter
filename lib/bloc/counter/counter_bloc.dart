// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'counter_event.dart';
// import 'counter_state.dart';
//
// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc() : super(CounterInitial()) {
//
//     // **** using copywith ****
//     // on<IncrementEvent>((event, emit) async {
//     //    emit(state.copyWith(isLoading: true));
//     //    await Future.delayed(const Duration(seconds: 1));
//     //    emit(state.copyWith(counter:state.counter+1,isLoading: false));
//     // });
//     // on<DecrementEvent>((event, emit) => emit(CounterLoaded(state.counter - 1)));
//
//     on<IncrementEvent>((event,emit) async{
//         emit(Loading());
//         await Future.delayed(const Duration(seconds: 1));
//         emit(CounterLoaded(state.counter + 1 ));
//     });
//
//
//
//
//
//
//   }
// }