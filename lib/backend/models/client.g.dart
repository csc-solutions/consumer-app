// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientImpl _$$ClientImplFromJson(Map<String, dynamic> json) => _$ClientImpl(
      deviceId: json['deviceId'] as String? ?? "",
      deviceType: json['deviceType'] as String? ?? "",
      deviceName: json['deviceName'] as String? ?? "",
      osVersion: json['osVersion'] as String? ?? "",
    );

Map<String, dynamic> _$$ClientImplToJson(_$ClientImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceType': instance.deviceType,
      'deviceName': instance.deviceName,
      'osVersion': instance.osVersion,
    };
