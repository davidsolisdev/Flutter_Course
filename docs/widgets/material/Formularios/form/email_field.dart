import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  EmailField({required this.email, super.key});

  String email;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '',
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      toolbarOptions: _toolBarOptions,
      decoration: _decoration,
      onChanged: (newValue) => email = newValue,
      validator: (value) {
        if (value == null || value.length < 5) {
          return 'La longitud minima es 5 caracteres';
        }
        return null;
      },
    );
  }

  final _toolBarOptions = const ToolbarOptions(
    copy: true,
    cut: true,
    paste: true,
    selectAll: true,
  );

  final _decoration = const InputDecoration(
    label: Text('Email'),
    hintText: 'Ingresa tu email',
  );
}
