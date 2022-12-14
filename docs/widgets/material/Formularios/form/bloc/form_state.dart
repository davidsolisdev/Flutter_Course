part of 'form_bloc.dart';

class FormStateBloc {
  FormStateBloc({
    required this.listImages,
    required this.image,
    required this.email,
    required this.password,
  });

  List<XFile> listImages;
  XFile? image;
  String email;
  String password;

  sendForm(GlobalKey<FormState> key) {
    if (key.currentState!.validate()) {
      key.currentState!.save();
    }
  }

  FormStateBloc copyWith({
    List<XFile>? listImages,
    XFile? image,
    String? email,
    String? password,
  }) =>
      FormStateBloc(
        listImages: listImages ?? this.listImages,
        image: image ?? this.image,
        email: email ?? this.email,
        password: password ?? this.password,
      );
}

class InitialFormState extends FormStateBloc {
  InitialFormState()
      : super(listImages: [], image: null, email: '', password: '');
}
