import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/form_bloc.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isContentVisible = false;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<FormBloc>(context, listen: true);

    return TextFormField(
      initialValue: '',
      obscureText: !_isContentVisible,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      toolbarOptions: _toolBarOptions,
      onChanged: (newValue) =>
          bloc.add(ChangeFormValue(bloc.state, password: newValue)),
      validator: (value) {
        if (value == null || value.length < 8) {
          return 'la longitud minima es 8 caracteres';
        }
        return null;
      },
      decoration: InputDecoration(
        label: const Text('Password'),
        hintText: 'Ingresa tu contraseña',
        suffixIcon: IconButton(
          onPressed: () => setState(() {
            _isContentVisible = !_isContentVisible;
          }),
          icon: Icon(
            _isContentVisible
                ? Icons.visibility_off
                : Icons.remove_red_eye_rounded,
          ),
        ),
      ),
    );
  }

  final _toolBarOptions = const ToolbarOptions(
    copy: true,
    cut: true,
    paste: true,
    selectAll: true,
  );
}
