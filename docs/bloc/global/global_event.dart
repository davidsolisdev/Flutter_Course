part of 'global_bloc.dart';

@immutable
abstract class GlobalEvent {
  const GlobalEvent(this.lastState);

  final GlobalState lastState;
}

class SetLoginEvent extends GlobalEvent {
  final String token;
  final bool login;

  const SetLoginEvent(
    GlobalState lastState, {
    required this.token,
    required this.login,
  }) : super(lastState);
}
