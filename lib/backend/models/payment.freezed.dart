// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String get uuid => throw _privateConstructorUsedError;
  PaymentStatusEnum get status => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "debit_destination")
  String get debitDestination => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_destination")
  String get creditDestination => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _stringToInt)
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discounted_amount')
  int get discountedAmount => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  Service get service => throw _privateConstructorUsedError;
  @JsonKey(name: "service_payment")
  Service get servicePayment => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {String uuid,
      PaymentStatusEnum status,
      String code,
      @JsonKey(name: "debit_destination") String debitDestination,
      @JsonKey(name: "credit_destination") String creditDestination,
      @JsonKey(fromJson: _stringToInt) int amount,
      @JsonKey(name: 'discounted_amount') int discountedAmount,
      Product product,
      Service service,
      @JsonKey(name: "service_payment") Service servicePayment,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});

  $ProductCopyWith<$Res> get product;
  $ServiceCopyWith<$Res> get service;
  $ServiceCopyWith<$Res> get servicePayment;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? status = null,
    Object? code = null,
    Object? debitDestination = null,
    Object? creditDestination = null,
    Object? amount = null,
    Object? discountedAmount = null,
    Object? product = null,
    Object? service = null,
    Object? servicePayment = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatusEnum,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      debitDestination: null == debitDestination
          ? _value.debitDestination
          : debitDestination // ignore: cast_nullable_to_non_nullable
              as String,
      creditDestination: null == creditDestination
          ? _value.creditDestination
          : creditDestination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      discountedAmount: null == discountedAmount
          ? _value.discountedAmount
          : discountedAmount // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
      servicePayment: null == servicePayment
          ? _value.servicePayment
          : servicePayment // ignore: cast_nullable_to_non_nullable
              as Service,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res> get service {
    return $ServiceCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res> get servicePayment {
    return $ServiceCopyWith<$Res>(_value.servicePayment, (value) {
      return _then(_value.copyWith(servicePayment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      PaymentStatusEnum status,
      String code,
      @JsonKey(name: "debit_destination") String debitDestination,
      @JsonKey(name: "credit_destination") String creditDestination,
      @JsonKey(fromJson: _stringToInt) int amount,
      @JsonKey(name: 'discounted_amount') int discountedAmount,
      Product product,
      Service service,
      @JsonKey(name: "service_payment") Service servicePayment,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});

  @override
  $ProductCopyWith<$Res> get product;
  @override
  $ServiceCopyWith<$Res> get service;
  @override
  $ServiceCopyWith<$Res> get servicePayment;
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? status = null,
    Object? code = null,
    Object? debitDestination = null,
    Object? creditDestination = null,
    Object? amount = null,
    Object? discountedAmount = null,
    Object? product = null,
    Object? service = null,
    Object? servicePayment = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PaymentImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatusEnum,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      debitDestination: null == debitDestination
          ? _value.debitDestination
          : debitDestination // ignore: cast_nullable_to_non_nullable
              as String,
      creditDestination: null == creditDestination
          ? _value.creditDestination
          : creditDestination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      discountedAmount: null == discountedAmount
          ? _value.discountedAmount
          : discountedAmount // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
      servicePayment: null == servicePayment
          ? _value.servicePayment
          : servicePayment // ignore: cast_nullable_to_non_nullable
              as Service,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl extends _Payment {
  const _$PaymentImpl(
      {this.uuid = "",
      this.status = PaymentStatusEnum.draft,
      this.code = "",
      @JsonKey(name: "debit_destination") this.debitDestination = "",
      @JsonKey(name: "credit_destination") this.creditDestination = "",
      @JsonKey(fromJson: _stringToInt) this.amount = 0,
      @JsonKey(name: 'discounted_amount') this.discountedAmount = 0,
      this.product = const Product(),
      this.service = const Service(),
      @JsonKey(name: "service_payment") this.servicePayment = const Service(),
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt})
      : super._();

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  @JsonKey()
  final String uuid;
  @override
  @JsonKey()
  final PaymentStatusEnum status;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey(name: "debit_destination")
  final String debitDestination;
  @override
  @JsonKey(name: "credit_destination")
  final String creditDestination;
  @override
  @JsonKey(fromJson: _stringToInt)
  final int amount;
  @override
  @JsonKey(name: 'discounted_amount')
  final int discountedAmount;
  @override
  @JsonKey()
  final Product product;
  @override
  @JsonKey()
  final Service service;
  @override
  @JsonKey(name: "service_payment")
  final Service servicePayment;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Payment(uuid: $uuid, status: $status, code: $code, debitDestination: $debitDestination, creditDestination: $creditDestination, amount: $amount, discountedAmount: $discountedAmount, product: $product, service: $service, servicePayment: $servicePayment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.debitDestination, debitDestination) ||
                other.debitDestination == debitDestination) &&
            (identical(other.creditDestination, creditDestination) ||
                other.creditDestination == creditDestination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discountedAmount, discountedAmount) ||
                other.discountedAmount == discountedAmount) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.servicePayment, servicePayment) ||
                other.servicePayment == servicePayment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      status,
      code,
      debitDestination,
      creditDestination,
      amount,
      discountedAmount,
      product,
      service,
      servicePayment,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment extends Payment {
  const factory _Payment(
      {final String uuid,
      final PaymentStatusEnum status,
      final String code,
      @JsonKey(name: "debit_destination") final String debitDestination,
      @JsonKey(name: "credit_destination") final String creditDestination,
      @JsonKey(fromJson: _stringToInt) final int amount,
      @JsonKey(name: 'discounted_amount') final int discountedAmount,
      final Product product,
      final Service service,
      @JsonKey(name: "service_payment") final Service servicePayment,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$PaymentImpl;
  const _Payment._() : super._();

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  String get uuid;
  @override
  PaymentStatusEnum get status;
  @override
  String get code;
  @override
  @JsonKey(name: "debit_destination")
  String get debitDestination;
  @override
  @JsonKey(name: "credit_destination")
  String get creditDestination;
  @override
  @JsonKey(fromJson: _stringToInt)
  int get amount;
  @override
  @JsonKey(name: 'discounted_amount')
  int get discountedAmount;
  @override
  Product get product;
  @override
  Service get service;
  @override
  @JsonKey(name: "service_payment")
  Service get servicePayment;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
