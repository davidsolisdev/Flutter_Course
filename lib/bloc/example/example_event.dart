part of './example_bloc.dart';

abstract class ExampleEvent {
  const ExampleEvent({required this.lastState});

  final ExampleState lastState;
}

class ChangeLogin extends ExampleEvent {
  bool login;
  String token;

  ChangeLogin(
    ExampleState lastState, {
    required this.login,
    required this.token,
  }) : super(lastState: lastState);
}
