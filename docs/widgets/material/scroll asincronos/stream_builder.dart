import 'package:flutter/material.dart';

import '../../../models/tarea_view.dart';
import '../../../streams/tareas_stream.dart';

class StreamBuilderW extends StatelessWidget {
  StreamBuilderW({super.key});

  final _tareasStream = TareasStream();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _tareasStream.listaTareasStream,
      initialData: const <TareaView>[],
      builder: ((context, snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data!.length, // total de items
                scrollDirection: Axis.vertical, // direccion del scroll
                padding: const EdgeInsets.all(1.0),
                itemBuilder: (context, i) {
                  return Text(
                    "Tarea ${snapshot.data![i].descripcionDeTarea}",
                  );
                },
              )
            : snapshot.hasError
                ? const Center(child: Text('no hay datos'))
                : const CircularProgressIndicator.adaptive();
      }),
    );
  }
}
