import 'dart:async';

import '../repositories/params/lista_tareas_query.dart';
import '../repositories/tareas_repository.dart';
import '../models/tarea_view.dart';

class TareasStream {
  // * utils for logic
  int _pageListaTareas = 0;
  bool _loadingListaTareas = false;
  List<TareaView> _listaTareas = [];
  final StreamController<List<TareaView>> _listaTareasStreamController =
      StreamController.broadcast();

  // * Streams
  Stream<List<TareaView>> get listaTareasStream =>
      _listaTareasStreamController.stream;
  void closeListaTareasStream() {
    _listaTareasStreamController.close();
  }

  // * methods of streams
  Future<String?> getListaTareas(String token, ListaTareasQuery query) async {
    // comprobate peticion loading
    if (_loadingListaTareas) return null;
    _loadingListaTareas = true;

    // set pageNo of the peticion
    query.pageNo = _pageListaTareas;

    var respuesta = await tareasRepository.listaTareas(token, query: query);
    _loadingListaTareas = false;

    // return error of petition
    if (respuesta.status != 200) {
      print(respuesta.data);
      return respuesta.data as String;
    }

    _pageListaTareas++;

    // add data to stream
    _listaTareas.addAll(respuesta.data!);
    _listaTareasStreamController.sink.add(_listaTareas);

    return null;
  }

  Future<void> getPageOneListaTareas(
    String token,
    ListaTareasQuery query,
  ) async {
    if (_loadingListaTareas) return;
    _loadingListaTareas = true;

    query.pageNo = 0;
    var respuesta = await tareasRepository.listaTareas(token, query: query);
    _loadingListaTareas = false;

    // return error of petition
    if (respuesta.status != 200) {
      print(respuesta.data);
      return;
    }

    // reset data
    _pageListaTareas = 1;
    _listaTareas = [];

    // add data to stream
    _listaTareas.addAll(respuesta.data!);
    _listaTareasStreamController.sink.add(_listaTareas);
  }
}
