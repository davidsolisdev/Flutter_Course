part of 'form_bloc.dart';

@immutable
class FormEvent {
  const FormEvent(this.lastState);

  final FormStateBloc lastState;
}

class ChangeFormValue extends FormEvent {
  const ChangeFormValue(
    FormStateBloc lastState, {
    this.listImages,
    this.image,
    this.email,
    this.password,
  }) : super(lastState);

  final List<XFile>? listImages;
  final XFile? image;
  final String? email;
  final String? password;
}
