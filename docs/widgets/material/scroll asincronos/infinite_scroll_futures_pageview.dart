import 'package:flutter/material.dart';
import '../../../repositories/tareas_repository.dart';
import '../../../repositories/params/lista_tareas_query.dart';
import '../../../models/tarea_view.dart';

class InfiniteScrollFutures extends StatefulWidget {
  const InfiniteScrollFutures({super.key});

  @override
  State<InfiniteScrollFutures> createState() => _InfiniteScrollFuturesState();
}

class _InfiniteScrollFuturesState extends State<InfiniteScrollFutures> {
  // * lista de tareas y utilidades
  int _pageNo = 0;
  bool _loading = false;
  List<TareaView> _lista = <TareaView>[];

  // * controlador de scroll
  final PageController _controller =
      PageController(initialPage: 0, viewportFraction: 0.3);

  void scrollListener() {
    if (_controller.position.pixels + 100 >=
        _controller.position.maxScrollExtent) {
      // * carga asincrona y llenado de lista de Tareas
      _newLoad();
    }
  }

  // * Metodos de obtencion de datos
  Future<void> _newLoad() async {
    if (_loading) return;
    _loading = true;

    var respuesta = await TareasRepository.listaTareas(
      "your_token",
      query: ListaTareasQuery(empresa: "you_empresa", pageNo: _pageNo),
    );
    _loading = false;

    if (respuesta.status != 200) {
      print(respuesta.data);
      return;
    }

    _lista.addAll(respuesta.data!);
    _pageNo++;
    setState(() {});
  }

  Future<void> _getPageOne() async {
    if (_loading) return;
    _loading = true;

    var respuesta = await TareasRepository.listaTareas(
      "you_token",
      query: ListaTareasQuery(empresa: "you_empresa", pageNo: 0),
    );
    _loading = false;

    if (respuesta.status != 200) {
      print(respuesta.data);
      return;
    }

    _lista = respuesta.data!;
    _pageNo = 1;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _controller.addListener(scrollListener);
  }

  @override
  void dispose() {
    _controller.removeListener(scrollListener);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _getPageOne, //Debe ser un future que retorna null
      backgroundColor: Colors.black, // color del fondo del indicator
      color: Colors.blue, // color de indicator
      child: PageView.builder(
        controller: _controller, // controlador
        itemCount: _lista.length, // total de items
        itemBuilder: (context, i) {
          return Text("Tarea ${_lista[i].descripcionDeTarea}");
        },
      ),
    );
  }
}
