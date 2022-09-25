import 'package:authentication_repo/src/models/user.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginReponse extends Equatable{
  final bool success;
  final String? message;
  final User? data;

  LoginReponse(this.success, this.message, this.data);
  factory LoginReponse.fromJson(Map<String, dynamic> json) =>
      _$LoginReponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginReponseToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [success, message, data];
}