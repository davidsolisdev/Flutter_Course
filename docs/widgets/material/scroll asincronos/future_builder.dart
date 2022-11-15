import 'package:flutter/material.dart';
import '../../../fetchers/tareas_fetcher.dart';
import '../../../models/params/lista_tareas_query.dart';
import '../../../models/tarea_view.dart';

class FutureBuilderW extends StatelessWidget {
  const FutureBuilderW({super.key});

  Future<List<TareaView>> _getData() async {
    var peticion = await tareasFetcher.listaTareas("you_token",
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
            ? ListView(
                children:
                    snapshot.data!.map((t) => Text('${t.noTarea}')).toList(),
              )
            : snapshot.hasError
                ? const Center(child: Text('no hay datos'))
                : const CircularProgressIndicator.adaptive();
      }),
    );
  }
}
