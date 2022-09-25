import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  const User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.token,
    this.deviceId,
    this.userType,
    this.avatar,
    this.classNumber,
    this.teacher,
    this.classId,
  });

  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? token;
  @JsonKey(name: 'device_id')
  final String? deviceId;
  @JsonKey(name: 'user_type')
  final String? userType;
  final String? avatar;
  final String? classNumber;
  final String? teacher;
  @JsonKey(name: 'my_class_id')
  final String? classId;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        email,
        token,
        phone,
        deviceId,
        userType,
        avatar,
        classNumber,
        teacher,
        classId
      ];
}
