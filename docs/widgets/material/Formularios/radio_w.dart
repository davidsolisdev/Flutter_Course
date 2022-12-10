import 'package:flutter/material.dart';

class RadioW extends StatefulWidget {
  const RadioW({Key? key}) : super(key: key);

  @override
  State<RadioW> createState() => _RadioWState();
}

class _RadioWState extends State<RadioW> {
  int _radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [0, 1, 2, 3]
          .map((int index) => Radio<int>(
                value: index,
                groupValue: _radioVal, //valor central de todos, (select)
                onChanged: (int? value) {
                  setState(() => _radioVal = value!);
                },
              ))
          .toList(),
    );
  }
}
