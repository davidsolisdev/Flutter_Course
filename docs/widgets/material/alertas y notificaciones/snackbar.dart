import 'package:flutter/material.dart';

class AlertW extends StatelessWidget {
  const AlertW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Text('Hola'),
          action: SnackBarAction(label: 'OK', onPressed: () {}),
          //backgroundColor: Colors.black,
          elevation: 6.0,
          //margin: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
          duration: const Duration(seconds: 4),
          dismissDirection: DismissDirection.down,
          //width: 300,
          //padding: ,
        ));
      },
      child: const Text('Snackbar'),
    );
  }
}
