// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserListModel _$UserListModelFromJson(Map<String, dynamic> json) =>
    UserListModel(
      status: json['Status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserListModelToJson(UserListModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['_id'] as String,
      name: json['name'] as String,
      number: json['number'] as int,
      email: json['email'] as String,
      password: json['password'] as String,
      image: json['image'] as String,
      isDelete: json['is_Delete'] as bool,
      isVerify: json['isVerify'] as bool,
      status: json['status'] as bool,
      roles: Roles.fromJson(json['roles'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'email': instance.email,
      'password': instance.password,
      'image': instance.image,
      'is_Delete': instance.isDelete,
      'isVerify': instance.isVerify,
      'status': instance.status,
      'roles': instance.roles,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };

Roles _$RolesFromJson(Map<String, dynamic> json) => Roles(
      id: json['_id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
    );

Map<String, dynamic> _$RolesToJson(Roles instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };