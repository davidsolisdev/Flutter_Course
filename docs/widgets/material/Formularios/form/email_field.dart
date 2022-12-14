import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/form_bloc.dart';

class EmailField extends StatelessWidget {
  EmailField({super.key});

  final RegExp regexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<FormBloc>(context, listen: true);

    return TextFormField(
      initialValue: '',
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      toolbarOptions: _toolBarOptions,
      decoration: _decoration,
      onSaved: (newValue) =>
          bloc.add(ChangeFormValue(bloc.state, email: newValue)),
      validator: (value) {
        if (value == null || value.length < 5) {
          return 'La longitud minima es 5 caracteres';
        }
        if (!regexp.hasMatch(value)) return 'Ingresa un email valido';
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
