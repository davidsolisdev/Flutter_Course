part of './example_bloc.dart';

abstract class ExampleEvent {}

class ChangeLogin extends ExampleEvent {
  ExampleState lastState;
  bool login;
  String token;

  ChangeLogin({
    required this.lastState,
    required this.login,
    required this.token,
  });
}
