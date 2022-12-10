import 'package:flutter/material.dart';

class PositionAbsolute extends StatelessWidget {
  const PositionAbsolute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 100.0,
      width: 100.0,
      bottom: 16.0,
      left: 16.0,
      right: 16.0,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          'Card 4 (complex example)',
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
