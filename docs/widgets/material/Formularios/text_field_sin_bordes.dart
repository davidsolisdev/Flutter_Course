import 'package:flutter/material.dart';

class BorderLessTextField extends StatelessWidget {
  BorderLessTextField({Key? key}) : super(key: key);

  final TextEditingController _controllerI = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controllerI,
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
        _controllerI.value = TextEditingValue(text: valor);
      },
    );
  }

  final InputDecoration _decoration = const InputDecoration.collapsed(
    hintText: 'soy el placeholder del input', // placeholder
    floatingLabelBehavior: FloatingLabelBehavior.always, // label arriba
    //label: const Text(''), // Nombre del input en forma de widget
  );
}
