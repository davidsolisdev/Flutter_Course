import 'package:flutter/material.dart';

class InputHora extends StatefulWidget {
  const InputHora({Key? key}) : super(key: key);

  @override
  State<InputHora> createState() => _InputHoraState();
}

class _InputHoraState extends State<InputHora> {
  final TextEditingController _controllerInput = TextEditingController();
  TimeOfDay? _time;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controllerInput,
      textAlign: TextAlign.center,
      readOnly: true,
      decoration: _decoration,
      onTap: () async {
        TimeOfDay? picked = await showTimePicker(
          context: context,
          initialTime: _time ?? TimeOfDay.now(),
          //confirmText: '',
          //cancelText: '',
        );

        if (picked == null) return;
        _time = picked;
        _controllerInput.value = TextEditingValue(
          text:
              '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}',
        );
      },
    );
  }

  final InputDecoration _decoration = const InputDecoration(
    hintText: 'Selecciona la hora',
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    labelText: 'Hora',
    prefixIcon: Icon(Icons.access_alarms_rounded),
    border: OutlineInputBorder(), // UnderlineInputBorder()
    alignLabelWithHint: true,
  );
}
