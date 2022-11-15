// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarea_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TareaView _$TareaViewFromJson(Map<String, dynamic> json) => TareaView(
      empresa: json['empresa'] as String,
      noTarea: json['noTarea'] as int,
      value: json['value'] as int,
      usuarioCreo: json['usuarioCreo'] as String,
      descripcionDeTarea: json['descripcionDeTarea'] as String,
      tiempoEstimadoEnMinutos: json['tiempoEstimadoEnMinutos'] as String,
      responsable: json['responsable'] as String,
      estadoTarea: json['estadoTarea'] as int,
    );

Map<String, dynamic> _$TareaViewToJson(TareaView instance) => <String, dynamic>{
      'empresa': instance.empresa,
      'noTarea': instance.noTarea,
      'value': instance.value,
      'usuarioCreo': instance.usuarioCreo,
      'descripcionDeTarea': instance.descripcionDeTarea,
      'tiempoEstimadoEnMinutos': instance.tiempoEstimadoEnMinutos,
      'responsable': instance.responsable,
      'estadoTarea': instance.estadoTarea,
    };
