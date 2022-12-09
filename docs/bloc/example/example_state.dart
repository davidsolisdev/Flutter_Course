part of './example_bloc.dart';

class ExampleState {
  const ExampleState(
      {required this.theme, required this.login, required this.token});

  final String theme;
  final bool login;
  final String token;

  ExampleState copyWith({String? theme, bool? login, String? token}) =>
      ExampleState(
        theme: theme ?? this.theme,
        login: login ?? this.login,
        token: token ?? this.token,
      );
}

class ExampleInitialState extends ExampleState {
  const ExampleInitialState()
      : super(
          theme: "ligth",
          login: false,
          token: "",
        );
}
