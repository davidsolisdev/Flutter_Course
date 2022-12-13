import 'package:flutter/material.dart';

class AlertW extends StatelessWidget {
  const AlertW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: () async {
        String? response = await showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            alignment: Alignment.center,
            scrollable: true,
            //backgroundColor: Colors.grey,
            //elevation: 24.0,
            icon: const Icon(Icons.access_alarm),
            //iconColor: Colors.blue,
            //iconPadding: const EdgeInsets.all(24),
            title: const Text('Titulo alerta'),
            //titlePadding: const EdgeInsets.all(24),
            //titleTextStyle: const TextStyle(),
            content: const Text('Contenido alerta'),
            //contentPadding: const EdgeInsets.all(20),
            //contentTextStyle: const TextStyle(),
            actionsAlignment: MainAxisAlignment.end,
            //actionsPadding: const EdgeInsets.all(0),
            //actionsOverflowButtonSpacing: ,
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancelar'),
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );

        if (response != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('You clicked: $response'),
              action: SnackBarAction(label: 'OK', onPressed: () {}),
            ),
          );
        }
      },
      child: const Text('Alerta'),
    );
  }
}
