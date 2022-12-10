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
        return snapshot.connectionState == ConnectionState.done
            ? ListView.builder(
                itemCount: snapshot.data!.length, // total de items
                itemBuilder: (context, i) {
                  return Text(
                    "Tarea ${snapshot.data![i].descripcionDeTarea}",
                  );
                },
              )
            : snapshot.connectionState == ConnectionState.waiting
                ? const CircularProgressIndicator.adaptive()
                : const Center(child: Text('no hay datos'));
      }),
    );
  }
}
