import 'package:flutter/material.dart';
import '../../../models/params/lista_tareas_query.dart';
import '../../../models/tarea_view.dart';
import '../../../streams/tareas_stream.dart';

class InfiniteScrollStreams extends StatefulWidget {
  const InfiniteScrollStreams({super.key});

  @override
  State<InfiniteScrollStreams> createState() => _InfiniteScrollStreamsState();
}

class _InfiniteScrollStreamsState extends State<InfiniteScrollStreams> {
  final TareasStream _tareasStream = TareasStream();
  final ScrollController _controller = ScrollController();

  void _scrollListener() {
    if (_controller.position.pixels + 100 >=
        _controller.position.maxScrollExtent) {
      _tareasStream.getListaTareas("yout_token", ListaTareasQuery(empresa: ""));
    }
  }

  Future<void> _getPageOne() async {
    await _tareasStream.getPageOneListaTareas(
      "",
      ListaTareasQuery(empresa: ""),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _tareasStream.closeListaTareasStream();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _getPageOne,
      backgroundColor: Colors.black, // color del fondo del indicator
      color: Colors.blue, // color de indicator
      child: StreamBuilder(
        stream: _tareasStream.listaTareasStream,
        initialData: const <TareaView>[],
        builder: (context, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  controller: _controller, // controlador
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
                  ? const Center(child: Text("No hay datos"))
                  : const CircularProgressIndicator.adaptive();
        },
      ),
    );
  }
}
