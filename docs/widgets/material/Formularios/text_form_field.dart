import 'package:flutter/material.dart';

class TextFormFieldW extends StatefulWidget {
  const TextFormFieldW({Key? key}) : super(key: key);

  @override
  State<TextFormFieldW> createState() => _TextFormFieldWState();
}

class _TextFormFieldWState extends State<TextFormFieldW> {
  final _formLoginKey = GlobalKey<FormState>();
  late TextEditingController _inputController;
  String value = '';

  @override
  void initState() {
    super.initState();
    _inputController = TextEditingController(text: value);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formLoginKey,
      child: TextFormField(
        initialValue: '',
        controller: _inputController,
        keyboardType: TextInputType.text,
        autocorrect: false, // habilitar el autocorrector
        textCapitalization: TextCapitalization.sentences, //cada palabra
        enableSuggestions: true,
        maxLength: 10,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        //minLines: 1,
        maxLines: 1,
        obscureText: true, //inputs de contraseña, vuelve puntos las letras
        //obscuringCharacter: "*",
        //autofocus: true,
        enabled: true,
        readOnly: false,
        decoration: _decoration,
        cursorColor: Colors.blue,
        onTap: () {}, // al tocar se activa el evento
        onEditingComplete: () {
          _formLoginKey.currentState?.validate(); // validar el campo
        },
        onChanged: (String valor) {
          // cada vez que se escribe
        },
        autovalidateMode: AutovalidateMode.onUserInteraction, // always
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return '    ¡Se requiere un usuario!';
          }

          return null;
        },
      ),
    );
  }

  final InputDecoration _decoration = InputDecoration(
    counter: const Text('letras 0'), // texto a la derecha debajo del input
    hintText: 'soy el placeholder del input', // placeholder
    floatingLabelBehavior: FloatingLabelBehavior.always, // label arriba
    labelText: 'nombre', // Nombre del input en forma de string
    //label: const Text(''), // Nombre del input en forma de widget
    helperText: 'texto de ayuda abajo del input', // Texto abajo string
    icon: const Icon(Icons.ac_unit), // icono fuera, al inicio
    prefixIcon: const Icon(Icons.access_alarm), // icono al inicio
    suffixIcon: const Icon(Icons.add), // icono al final
    filled: true, // input filled, normalmente cuando es UnderlineInputBorder()
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)), // UnderlineInputBorder()
    alignLabelWithHint: true, // el label se coloca en el espacio del texto
  );
}

// * Quitar el focus del campo al hacer tap fuera

//GestureDetector(
//  onTap: () {
//    FocusScopeNode currentFocus = FocusScope.of(context);
//   if (!currentFocus.hasPrimaryFocus) {
//      currentFocus.unfocus();
//    }
//  },
//  child: ListView(
//   children: [
//      Container(height: 50),
//      TextFormField()
//    ],
//  ),
//);