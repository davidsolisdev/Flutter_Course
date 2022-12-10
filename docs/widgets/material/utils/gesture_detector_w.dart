import 'package:flutter/material.dart';

class GestureDetectorW extends StatelessWidget {
  const GestureDetectorW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      onDoubleTap: () {},
      onLongPress: () {},
      child: const SizedBox(height: 200, width: 200),
    );
  }
}
