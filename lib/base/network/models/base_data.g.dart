// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseListData<T> _$BaseListDataFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    BaseListData<T>(
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$BaseListDataToJson<T>(
  BaseListData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data?.map(toJsonT).toList(),
      'status': instance.status,
    };

BaseData<T> _$BaseDataFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    BaseData<T>(
      metadata: _$nullableGenericFromJson(json['metadata'], fromJsonT),
      status: json['status'] as int?,
      message: _$nullableGenericFromJson(json['message'], fromJsonT),
    );

Map<String, dynamic> _$BaseDataToJson<T>(
  BaseData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'metadata': _$nullableGenericToJson(instance.metadata, toJsonT),
      'message': _$nullableGenericToJson(instance.message, toJsonT),
      'status': instance.status,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
