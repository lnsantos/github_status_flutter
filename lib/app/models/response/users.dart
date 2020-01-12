import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class Users{

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);

  Users({
    this.nome,
    this.nomeCompleto,
  });

  final String nome;

  @JsonKey(name: "nome_completo")
  final String nomeCompleto;
}