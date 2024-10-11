// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientState _$ClientStateFromJson(Map<String, dynamic> json) {
  return _ClientState.fromJson(json);
}

/// @nodoc
mixin _$ClientState {
  String get sessionToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientStateCopyWith<ClientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientStateCopyWith<$Res> {
  factory $ClientStateCopyWith(
          ClientState value, $Res Function(ClientState) then) =
      _$ClientStateCopyWithImpl<$Res, ClientState>;
  @useResult
  $Res call({String sessionToken});
}

/// @nodoc
class _$ClientStateCopyWithImpl<$Res, $Val extends ClientState>
    implements $ClientStateCopyWith<$Res> {
  _$ClientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionToken = null,
  }) {
    return _then(_value.copyWith(
      sessionToken: null == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientStateImplCopyWith<$Res>
    implements $ClientStateCopyWith<$Res> {
  factory _$$ClientStateImplCopyWith(
          _$ClientStateImpl value, $Res Function(_$ClientStateImpl) then) =
      __$$ClientStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionToken});
}

/// @nodoc
class __$$ClientStateImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$ClientStateImpl>
    implements _$$ClientStateImplCopyWith<$Res> {
  __$$ClientStateImplCopyWithImpl(
      _$ClientStateImpl _value, $Res Function(_$ClientStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionToken = null,
  }) {
    return _then(_$ClientStateImpl(
      sessionToken: null == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientStateImpl implements _ClientState {
  _$ClientStateImpl({this.sessionToken = ""});

  factory _$ClientStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientStateImplFromJson(json);

  @override
  @JsonKey()
  final String sessionToken;

  @override
  String toString() {
    return 'ClientState(sessionToken: $sessionToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientStateImpl &&
            (identical(other.sessionToken, sessionToken) ||
                other.sessionToken == sessionToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sessionToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientStateImplCopyWith<_$ClientStateImpl> get copyWith =>
      __$$ClientStateImplCopyWithImpl<_$ClientStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientStateImplToJson(
      this,
    );
  }
}

abstract class _ClientState implements ClientState {
  factory _ClientState({final String sessionToken}) = _$ClientStateImpl;

  factory _ClientState.fromJson(Map<String, dynamic> json) =
      _$ClientStateImpl.fromJson;

  @override
  String get sessionToken;
  @override
  @JsonKey(ignore: true)
  _$$ClientStateImplCopyWith<_$ClientStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
