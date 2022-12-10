import 'package:flutter/material.dart';

class TextFormFieldW extends StatefulWidget {
  const TextFormFieldW({Key? key}) : super(key: key);

  @override
  State<TextFormFieldW> createState() => _TextFormFieldWState();
}

class _TextFormFieldWState extends State<TextFormFieldW> {
  final _formLoginKey = GlobalKey<FormState>();
  final _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formLoginKey,
      child: TextFormField(
        controller: _inputController,
        keyboardType: TextInputType.text,
        autocorrect: false, // habilitar el autocorrector
        autofocus: true,
        enabled: true,
        readOnly: false,
        enableSuggestions: true,
        textCapitalization: TextCapitalization.sentences, //cada palabra
        maxLength: 10,
        maxLines: 1,
        obscureText: true, //inputs de contraseña, vuelve puntos las letras
        decoration: InputDecoration(
          counter:
              const Text('letras 0'), // texto a la derecha debajo del input
          hintText: 'soy el placeholder del input', // placeholder
          labelText: 'nombre', // Nombre del input en string
          label: const Text(''), // Nombre del input en widget
          helperText: 'texto de ayuda abajo del input', // Texto abajo string
          icon: const Icon(Icons.ac_unit), // icono al inicio
          suffixIcon: const Icon(Icons.add), // icono al final
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          floatingLabelBehavior: FloatingLabelBehavior.always, // label arriba
          alignLabelWithHint:
              true, // el label se coloca en el espacio del texto
        ),
        onChanged: (String valor) {
          // cada vez que se escribe
        },
        onTap: () {}, // al tocar se activa el evento
        onEditingComplete: () {
          // validar el campo
          _formLoginKey.currentState?.validate();
        },
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return '    ¡Se requiere un usuario!';
          }

          return null;
        },
      ),
    );
  }
}
