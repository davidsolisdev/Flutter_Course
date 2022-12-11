import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();

  final List<String> _items = ['Uno', 'Dos', 'Tres'];

  String? value;
  late TextEditingController controllerI;

  @override
  void initState() {
    super.initState();
    controllerI = TextEditingController(text: value);
  }

  final InputDecoration _decoration = const InputDecoration(
    counter: Text('letras 0'), // texto a la derecha debajo del input
    hintText: 'soy el placeholder del input', // placeholder
    labelText: 'nombre', // Nombre del input en forma de string
    //label: const Text(''), // Nombre del input en forma de widget
    helperText: 'texto de ayuda abajo del input', // Texto abajo string
    icon: Icon(Icons.ac_unit), // icono al inicio
    suffixIcon: Icon(Icons.add), // icono al final
    border: UnderlineInputBorder(),
    floatingLabelBehavior: FloatingLabelBehavior.auto, // label arriba
    alignLabelWithHint: false, // el label se coloca en el espacio del texto
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: ListView(
          children: [
            Container(
              height: 50,
            ),
            TextField(
              //controller: controllerI,
              keyboardType: TextInputType.text,
              autocorrect: false, // habilitar el autocorrector
              textCapitalization: TextCapitalization.sentences, //cada palabra
              enableSuggestions: true,
              decoration: _decoration,
              onChanged: (String valor) {
                value = valor;
              },
            )
          ],
        ),
      ),
    );
  }
}
