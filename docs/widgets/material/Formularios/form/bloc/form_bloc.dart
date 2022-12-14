import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:image_picker/image_picker.dart';

part 'form_state.dart';
part 'form_event.dart';

class FormBloc extends Bloc<FormEvent, FormStateBloc> {
  FormBloc() : super(InitialFormState()) {
    on<ChangeFormValue>(
      (event, emit) => emit(
        event.lastState.copyWith(
          image: event.image,
          email: event.email,
          password: event.password,
        ),
      ),
    );
  }
}
