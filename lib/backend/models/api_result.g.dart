// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResultImpl<T> _$$ApiResultImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResultImpl<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$$ApiResultImplToJson<T>(
  _$ApiResultImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
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
