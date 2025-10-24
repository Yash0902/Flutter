
// **** using copywith ****

// class CounterState {
//   final int counter;
//   final bool isLoading;
//
//   const CounterState({required this.counter, this.isLoading = false});
//
//   CounterState copyWith({int? counter, bool? isLoading}) {
//     return CounterState(
//       counter: counter ?? this.counter,
//       isLoading: isLoading ?? this.isLoading,
//     );
//   }
// }


abstract class CounterState{}

class Loading extends CounterState{}

class CounterInitial extends CounterState {}

class CounterLoaded extends CounterState{
  final int counter;
  CounterLoaded(this.counter);
}

class Error extends CounterState{
   final String error;
   Error(this.error);
}
