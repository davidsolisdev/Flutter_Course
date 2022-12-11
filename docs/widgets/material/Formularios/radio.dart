import 'package:flutter/material.dart';

class RadioW extends StatefulWidget {
  const RadioW({Key? key}) : super(key: key);

  @override
  State<RadioW> createState() => _RadioWState();
}

class _RadioWState extends State<RadioW> {
  int _radioVal = 0;
  final List<int> _items = [0, 1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _items
          .map((int val) => Radio<int>(
                value: val,
                groupValue: _radioVal, //valor central de todos, (select)
                //activeColor: Colors.amber,
                //splashRadius: 20,
                onChanged: (int? value) {
                  _radioVal = value!;
                  setState(() {});
                },
              ))
          .toList(),
    );
  }
}
