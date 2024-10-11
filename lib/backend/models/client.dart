import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@Freezed()
class Client with _$Client {
  const factory Client({
    @Default("") String deviceId,
    @Default("") String deviceType,
    @Default("") String deviceName,
    @Default("") String osVersion,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}
