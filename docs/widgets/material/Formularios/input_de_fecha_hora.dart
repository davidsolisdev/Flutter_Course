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
  TimeOfDay? _time;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controllerInput,
      readOnly: true,
      decoration: _decoration,
      onTap: () async {
        // * GET DATE
        DateTime? pickedDate = await _showPickerDate();
        if (pickedDate == null) return;

        _fecha = pickedDate;
        _controllerInput.value = TextEditingValue(
          text: '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}',
        );

        // * GET TIME
        TimeOfDay? pickedTime = await _showPickerTime();
        if (pickedTime == null) return;

        _time = pickedTime;
        _controllerInput.value = TextEditingValue(
          text:
              '${_controllerInput.value.text} ${pickedTime.hour.toString().padLeft(2, '0')}:${pickedTime.minute.toString().padLeft(2, '0')}',
        );
      },
    );
  }

  Future<DateTime?> _showPickerDate() async => await showDatePicker(
        context: context,
        initialDate: _fecha ?? DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2025),
        locale: const Locale('es', 'ES'),
        initialDatePickerMode: DatePickerMode.day,
        //confirmText: '',
        //cancelText: '',
      );

  Future<TimeOfDay?> _showPickerTime() async => await showTimePicker(
        context: context,
        initialTime: _time ?? TimeOfDay.now(),
        //confirmText: '',
        //cancelText: '',
      );

  final InputDecoration _decoration = const InputDecoration(
    hintText: 'Selecciona Fecha y hora',
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    labelText: 'Fecha y hora',
    prefixIcon: Icon(Icons.calendar_month),
    border: OutlineInputBorder(), // UnderlineInputBorder()
    alignLabelWithHint: true,
  );
}
