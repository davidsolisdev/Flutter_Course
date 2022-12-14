import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import './email_field.dart';
import './password_field.dart';
import './image_field.dart';

class Formulario extends StatelessWidget {
  Formulario({super.key});

  XFile? image;
  String email = '';
  String password = '';
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  Future _senForm() async {
    if (_keyForm.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: ImageField(
                    image: image, heightImage: 300, widthImage: 300)),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Column(
                children: <Widget>[
                  EmailField(email: email),
                  PasswordField(password: password),
                  ElevatedButton(
                      onPressed: _senForm, child: const Text('Enviar')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
