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
 *    const Locale('en', ''),
 *    const Locale('es', 'ES'),
 *  ],
 * 
 */

import 'package:flutter/material.dart';

class InputFecha extends StatefulWidget {
  const InputFecha({Key? key}) : super(key: key);

  @override
  State<InputFecha> createState() => _InputFechaState();
}

class _InputFechaState extends State<InputFecha> {
  String fecha = "";
  late TextEditingController controllerInput;

  @override
  void initState() {
    super.initState();

    controllerInput = TextEditingController(text: fecha);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerInput,
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());
        DateTime? picked = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2018),
          lastDate: DateTime(2025),
          locale: const Locale('es', 'ES'),
        );

        if (picked != null) {
          setState(() {
            fecha = picked.toString();
          });
        }
      },
    );
  }
}
