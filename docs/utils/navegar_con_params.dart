import 'package:flutter/material.dart';

class NevegarARutaConParams extends StatelessWidget {
  const NevegarARutaConParams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: const Text("Navegar con nombre"),
          onPressed: () => Navigator.pushNamed(
            context,
            "/otraRuta",
            arguments: {"user": "David"},
          ),
        ),
      ],
    );
  }
}
