import 'package:flutter/material.dart';

class ClendarPickerW extends StatefulWidget {
  const ClendarPickerW({Key? key}) : super(key: key);

  @override
  State<ClendarPickerW> createState() => _ClendarPickerWState();
}

class _ClendarPickerWState extends State<ClendarPickerW> {
  DateTime? _fecha;

  @override
  Widget build(BuildContext context) {
    return CalendarDatePicker(
      initialDate: _fecha ?? DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
      initialCalendarMode: DatePickerMode.day,
      onDateChanged: ((newDate) {
        _fecha = newDate;
        setState(() {});
      }),
    );
  }
}
