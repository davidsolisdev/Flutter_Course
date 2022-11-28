part of './example_bloc.dart';

@immutable
abstract class ExampleState {
  final String theme;
  final bool login;
  final String token;

  const ExampleState({
    required this.theme,
    required this.login,
    required this.token,
  });
}

class ExampleInitialState extends ExampleState {
  const ExampleInitialState()
      : super(
          theme: "ligth",
          login: false,
          token: "",
        );
}

class ExampleModifyState extends ExampleState {
  ExampleModifyState(
    ExampleState state, {
    String? theme,
    bool? login,
    String? token,
  }) : super(
          theme: theme ?? state.theme,
          login: login ?? state.login,
          token: token ?? state.token,
        );
}
