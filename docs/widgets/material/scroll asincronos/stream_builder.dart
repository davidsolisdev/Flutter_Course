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
            ? ListView(
                children: snapshot.data!.map((e) => Container()).toList(),
              )
            : snapshot.hasError
                ? const Center(child: Text('no hay datos'))
                : const CircularProgressIndicator.adaptive();
      }),
    );
  }
}
