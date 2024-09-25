import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobileexercise1/domain/entities/counter.dart';
import 'package:mobileexercise1/presentation/bloc/counter_event.dart';
import 'package:mobileexercise1/presentation/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(Counter(0))) {
    on<IncrementCounter>(_onIncrement);
    on<DecrementCounter>(_onDecrement);
  }

  void _onIncrement(IncrementCounter event, Emitter<CounterState> emit) {
    final newValue = state.counter.value + 1;
    emit(CounterState(Counter(newValue)));
  }

  void _onDecrement(DecrementCounter event, Emitter<CounterState> emit) {
    final newValue = state.counter.value - 1;
    emit(CounterState(Counter(newValue)));
  }
}
