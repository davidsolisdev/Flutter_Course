import '../models/params/lista_tareas_query.dart';
import '../models/tarea_view.dart';
import '../utils/url.dart';
import 'fetcher.dart';

class _TareasFetcher {
  Future<ResFetch<List<TareaView>>> listaTareas(String token,
      {required ListaTareasQuery query}) async {
    final uri = URL(url, "/Tareas/ListaTareas", {
      "Empresa": query.empresa,
      "NoTarea": query.noTarea,
      "Descripcion": query.descripcion,
      "PageSize": query.pageSize,
      "PageNo": query.pageNo
    });
    return Fetcher.get<List<TareaView>>(
      uri,
      headers: {"Authorization": token},
      maper: TareaView.fromJsonList,
    );
  }
}

final tareasFetcher = _TareasFetcher();
