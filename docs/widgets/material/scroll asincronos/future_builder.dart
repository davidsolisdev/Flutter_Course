import 'package:flutter/material.dart';
import '../../../repositories/tareas_repository.dart';
import '../../../repositories/params/lista_tareas_query.dart';
import '../../../models/tarea_view.dart';

class FutureBuilderW extends StatelessWidget {
  const FutureBuilderW({super.key});

  Future<List<TareaView>> _getData() async {
    var peticion = await TareasRepository.listaTareas("you_token",
        query: ListaTareasQuery(empresa: ""));

    if (peticion.status != 200) {
      print(peticion.data);
      return [];
    }
    return peticion.data!;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getData(),
      initialData: const <TareaView>[],
      builder: ((context, snapshot) {
        snapshot.connectionState == ConnectionState.waiting;
        return snapshot.connectionState == ConnectionState.done
            ? ListView.builder(
                itemCount: snapshot.data!.length, // total de items
                itemBuilder: (context, i) => Text(
                  "Tarea ${snapshot.data![i].descripcionDeTarea}",
                ),
              )
            : snapshot.connectionState == ConnectionState.waiting
                ? const CircularProgressIndicator.adaptive()
                : const Center(child: Text('no hay datos'));
      }),
    );
  }
}
