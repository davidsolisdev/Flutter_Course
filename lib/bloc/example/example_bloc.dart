import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part './example_state.dart';
part './example_event.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(const ExampleInitialState()) {
    on<ChangeLogin>((event, emit) {
      emit(event.lastState.copyWith(
        login: event.login,
        token: event.token,
      ));
    });
  }
}
