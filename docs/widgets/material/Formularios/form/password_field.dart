import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  PasswordField({required this.password, super.key});

  String password;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isContentVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '',
      obscureText: !_isContentVisible,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      toolbarOptions: _toolBarOptions,
      onChanged: (newValue) => widget.password = newValue,
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
