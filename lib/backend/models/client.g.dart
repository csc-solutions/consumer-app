// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientImpl _$$ClientImplFromJson(Map<String, dynamic> json) => _$ClientImpl(
      deviceId: json['device_id'] as String? ?? "",
      deviceType: json['device_type'] as String? ?? "",
      deviceName: json['device_name'] as String? ?? "",
      osVersion: json['os_version'] as String? ?? "",
    );

Map<String, dynamic> _$$ClientImplToJson(_$ClientImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'device_type': instance.deviceType,
      'device_name': instance.deviceName,
      'os_version': instance.osVersion,
    };
