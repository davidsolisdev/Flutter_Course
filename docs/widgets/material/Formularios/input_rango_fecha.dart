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
  final DateTime _fechaActual = DateTime.now();
  DateTimeRange? _rangoFechas;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controllerInput,
      readOnly: true,
      decoration: _decoration,
      onTap: () async {
        DateTimeRange? picked = await showDateRangePicker(
          context: context,
          initialDateRange: _rangoFechas ??
              DateTimeRange(start: _fechaActual, end: _fechaActual),
          firstDate: DateTime(2018),
          lastDate: DateTime(2025),
          locale: const Locale('es', 'ES'),
          initialEntryMode: DatePickerEntryMode.calendar,
          //saveText: '',
          //confirmText: '',
          //cancelText: '',
          //errorInvalidRangeText: '',
          //errorInvalidText: '',
          //errorFormatText: '',
        );

        if (picked == null) return;
        _rangoFechas = picked;
        _controllerInput.value = TextEditingValue(
          text:
              '${picked.start.day}/${picked.start.month}/${picked.start.year} - ${picked.end.day}/${picked.end.month}/${picked.end.year}',
        );
      },
    );
  }

  final InputDecoration _decoration = const InputDecoration(
    hintText: 'Selecciona el Rango de Fecha',
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    labelText: 'Rango de Fechas',
    prefixIcon: Icon(Icons.calendar_month),
    border: OutlineInputBorder(), // UnderlineInputBorder()
    alignLabelWithHint: true,
  );
}
