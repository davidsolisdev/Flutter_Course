import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/form_bloc.dart';
import './email_field.dart';
import './password_field.dart';
import './image_field.dart';

class Formulario extends StatelessWidget {
  Formulario({super.key});

  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc(),
      child: BlocBuilder<FormBloc, FormStateBloc>(
        builder: (context, state) {
          return Form(
            key: _keyForm,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Center(
                      child: ImageField(heightImage: 300, widthImage: 300)),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: Column(
                      children: <Widget>[
                        EmailField(),
                        const PasswordField(),
                        ElevatedButton(
                          onPressed: () {
                            state.sendForm(_keyForm);
                          },
                          child: const Text('Enviar'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
