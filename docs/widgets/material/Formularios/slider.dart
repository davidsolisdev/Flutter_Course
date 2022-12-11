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
      thumbColor: Colors.amber, // color del indicador
      value: _valorSlider, // valor actual e inicial
      label: '$_valorSlider', // Tooltip con el label
      divisions: 4, // OPCIONAL, si queremos tener divisiones en cada punto
      min: 0.0, // valor mínimo
      max: 400.0, // valor máximo
      onChanged: (valor) {
        _valorSlider = valor;
        setState(() {});
      },
    );
  }
}
