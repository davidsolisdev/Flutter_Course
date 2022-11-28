class ListaTareasQuery {
  final String empresa;
  final int noTarea;
  final String descripcion;
  final int pageSize;
  int pageNo;
  ListaTareasQuery({
    required this.empresa,
    this.noTarea = 0,
    this.descripcion = "%",
    this.pageSize = 20,
    this.pageNo = 0,
  });
}
