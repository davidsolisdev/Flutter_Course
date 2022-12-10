import 'package:flutter/material.dart';

class ScrollParaChild extends StatelessWidget {
  const ScrollParaChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    return SingleChildScrollView(
      controller: controller,
      padding: const EdgeInsets.all(1.0),
      scrollDirection: Axis.vertical,
      child: Container(),
    );
  }
}
