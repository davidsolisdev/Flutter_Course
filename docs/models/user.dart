import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: "nombre")
  String nombre;

  User({required this.nombre});

  // FromJson
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // ToJson
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
