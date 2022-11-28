import 'params/lista_tareas_query.dart';
import '../models/tarea_view.dart';
import '../utils/url.dart';
import 'fetcher.dart';

<<<<<<< HEAD:docs/fetchers/tareas_fetcher.dart
class _TareasFetcher {
  Future<RespFetch<List<TareaView>>> listaTareas(String token,
=======
class _TareasRepo {
  Future<ResFetch<List<TareaView>>> listaTareas(String token,
>>>>>>> 108422dd4ffa989c398dcecd7f26aa9dba2a91bb:docs/repositories/tareas_repository.dart
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

final tareasRepository = _TareasRepo();
