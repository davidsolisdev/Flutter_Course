import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  const Inputs({Key? key}) : super(key: key);

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  String value = '';
  late TextEditingController controllerI;

  @override
  void initState() {
    super.initState();
    controllerI = TextEditingController(text: value);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerI,
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
      onEditingComplete: () {},
      onChanged: (String valor) {
        value = valor;
      },
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
//      TextField()
//    ],
//  ),
//);