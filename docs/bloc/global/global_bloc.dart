import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'global_event.dart';
part 'global_state.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(const GlobalInitialState()) {
    on<SetLoginEvent>((event, emit) {
      emit(GlobalModifyState(
        event.lastState,
        login: event.login,
        token: event.token,
      ));
    });
  }
}
