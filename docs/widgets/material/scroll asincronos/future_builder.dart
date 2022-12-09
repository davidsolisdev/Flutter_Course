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
