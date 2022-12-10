import 'package:flutter/material.dart';

class SliderW extends StatefulWidget {
  const SliderW({Key? key}) : super(key: key);

  @override
  State<SliderW> createState() => _SliderWState();
}

class _SliderWState extends State<SliderW> {
  double _valorSlider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: Colors.indigoAccent, // color del slider
      label: 'Tamaño de la imagen', // Tooltip con el label
      divisions: 20, // OPCIONAL por si queremos tener divisiones en cada punto
      value: _valorSlider, // valor actual e inicial
      min: 10.0, // valor mínimo
      max: 400.0, // valor máximo
      onChanged: (valor) {
        // cada vez que se mueve el slider
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }
}
