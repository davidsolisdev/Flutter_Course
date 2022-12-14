/*
 * Primero colocamos esto en el pubspec.yaml
 *  flutter_localizations:
 *    sdk: flutter
*/

/*
 * Importamos este paquete en el main.dart
 *  import 'package:flutter_localizations/flutter_localizations.dart';
*/

/*
 * 
 * Colocamos esto en el MaterialApp()
 *  localizationsDelegates: [
 *    GlobalMaterialLocalizations.delegate,
 *    GlobalWidgetsLocalizations.delegate,
 *    GlobalCupertinoLocalizations.delegate,
 *  ],
 *  supportedLocales: [
 *    const Locale('en', 'US'),
 *    const Locale('es', 'ES'),
 *  ],
*/

import 'package:flutter/material.dart';

class InputFecha extends StatefulWidget {
  const InputFecha({Key? key}) : super(key: key);

  @override
  State<InputFecha> createState() => _InputFechaState();
}

class _InputFechaState extends State<InputFecha> {
  final TextEditingController _controllerInput = TextEditingController();
  DateTime? _fecha;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controllerInput,
      readOnly: true,
      decoration: _decoration,
      onTap: () async {
        DateTime? picked = await showDatePicker(
          context: context,
          initialDate: _fecha ?? DateTime.now(),
          firstDate: DateTime(2018),
          lastDate: DateTime(2025),
          locale: const Locale('es', 'ES'),
          initialDatePickerMode: DatePickerMode.day,
          //confirmText: '',
          //cancelText: '',
        );

        if (picked == null) return;
        _fecha = picked;
        _controllerInput.value = TextEditingValue(
          text: '${picked.day}/${picked.month}/${picked.year}',
        );
      },
    );
  }

  final InputDecoration _decoration = const InputDecoration(
    hintText: 'Selecciona la Fecha',
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    labelText: 'Fecha',
    prefixIcon: Icon(Icons.calendar_month),
    border: OutlineInputBorder(), // UnderlineInputBorder()
    alignLabelWithHint: true,
  );
}
