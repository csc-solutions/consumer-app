// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceState _$ServiceStateFromJson(Map<String, dynamic> json) {
  return _ServiceState.fromJson(json);
}

/// @nodoc
mixin _$ServiceState {
  List<Service> get services => throw _privateConstructorUsedError;
  ServiceStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceStateCopyWith<ServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceStateCopyWith<$Res> {
  factory $ServiceStateCopyWith(
          ServiceState value, $Res Function(ServiceState) then) =
      _$ServiceStateCopyWithImpl<$Res, ServiceState>;
  @useResult
  $Res call({List<Service> services, ServiceStatus status});
}

/// @nodoc
class _$ServiceStateCopyWithImpl<$Res, $Val extends ServiceState>
    implements $ServiceStateCopyWith<$Res> {
  _$ServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ServiceStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceStateCopyWith<$Res>
    implements $ServiceStateCopyWith<$Res> {
  factory _$$_ServiceStateCopyWith(
          _$_ServiceState value, $Res Function(_$_ServiceState) then) =
      __$$_ServiceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Service> services, ServiceStatus status});
}

/// @nodoc
class __$$_ServiceStateCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$_ServiceState>
    implements _$$_ServiceStateCopyWith<$Res> {
  __$$_ServiceStateCopyWithImpl(
      _$_ServiceState _value, $Res Function(_$_ServiceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
    Object? status = null,
  }) {
    return _then(_$_ServiceState(
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ServiceStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceState implements _ServiceState {
  _$_ServiceState(
      {final List<Service> services = const [],
      this.status = ServiceStatus.loading})
      : _services = services;

  factory _$_ServiceState.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceStateFromJson(json);

  final List<Service> _services;
  @override
  @JsonKey()
  List<Service> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  @JsonKey()
  final ServiceStatus status;

  @override
  String toString() {
    return 'ServiceState(services: $services, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceState &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_services), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceStateCopyWith<_$_ServiceState> get copyWith =>
      __$$_ServiceStateCopyWithImpl<_$_ServiceState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceStateToJson(
      this,
    );
  }
}

abstract class _ServiceState implements ServiceState {
  factory _ServiceState(
      {final List<Service> services,
      final ServiceStatus status}) = _$_ServiceState;

  factory _ServiceState.fromJson(Map<String, dynamic> json) =
      _$_ServiceState.fromJson;

  @override
  List<Service> get services;
  @override
  ServiceStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceStateCopyWith<_$_ServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}
