import 'package:json_annotation/json_annotation.dart';

part 'tarea_view.g.dart';

@JsonSerializable()
class TareaView {
  @JsonKey()
  final String empresa;

  @JsonKey()
  final int noTarea;

  @JsonKey()
  final int value;

  @JsonKey()
  final String usuarioCreo;

  @JsonKey()
  final String descripcionDeTarea;

  @JsonKey()
  final String tiempoEstimadoEnMinutos;

  @JsonKey()
  final String responsable;

  @JsonKey()
  final int estadoTarea;

  TareaView({
    required this.empresa,
    required this.noTarea,
    required this.value,
    required this.usuarioCreo,
    required this.descripcionDeTarea,
    required this.tiempoEstimadoEnMinutos,
    required this.responsable,
    required this.estadoTarea,
  });

  factory TareaView.fromJson(Map<String, dynamic> json) =>
      _$TareaViewFromJson(json);

  static List<TareaView> fromJsonList(List<Map<String, dynamic>> listJson) =>
      listJson.map((json) => _$TareaViewFromJson(json)).toList();

  Map<String, dynamic> toJson() => _$TareaViewToJson(this);

  static List<Map<String, dynamic>> toJsonList(list) =>
      list.map((item) => _$TareaViewToJson(item));
}
