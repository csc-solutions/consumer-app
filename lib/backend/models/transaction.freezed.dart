// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  int? get amountReceived => throw _privateConstructorUsedError;
  set amountReceived(int? value) => throw _privateConstructorUsedError;
  @Id()
  int get id => throw _privateConstructorUsedError;
  @Id()
  set id(int value) => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  set amount(int value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  String get userReference => throw _privateConstructorUsedError;
  set userReference(String value) => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  set uuid(String value) => throw _privateConstructorUsedError;
  String get paymentMethodCode => throw _privateConstructorUsedError;
  set paymentMethodCode(String value) => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  set currencyCode(String value) => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  set countryCode(String value) => throw _privateConstructorUsedError;
  String get recipient => throw _privateConstructorUsedError;
  set recipient(String value) => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;
  int? get isMock => throw _privateConstructorUsedError;
  set isMock(int? value) => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  set createdAt(DateTime value) => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  set customerId(String? value) => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  set customerName(String? value) => throw _privateConstructorUsedError;
  String? get customerAddress => throw _privateConstructorUsedError;
  set customerAddress(String? value) => throw _privateConstructorUsedError;
  String? get customerPhone => throw _privateConstructorUsedError;
  set customerPhone(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {int? amountReceived,
      @Id() int id,
      int amount,
      String status,
      String type,
      String userReference,
      String uuid,
      String paymentMethodCode,
      String currencyCode,
      String countryCode,
      String recipient,
      String? description,
      int? isMock,
      DateTime createdAt,
      DateTime? updatedAt,
      String? customerId,
      String? customerName,
      String? customerAddress,
      String? customerPhone});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountReceived = freezed,
    Object? id = null,
    Object? amount = null,
    Object? status = null,
    Object? type = null,
    Object? userReference = null,
    Object? uuid = null,
    Object? paymentMethodCode = null,
    Object? currencyCode = null,
    Object? countryCode = null,
    Object? recipient = null,
    Object? description = freezed,
    Object? isMock = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? customerAddress = freezed,
    Object? customerPhone = freezed,
  }) {
    return _then(_value.copyWith(
      amountReceived: freezed == amountReceived
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userReference: null == userReference
          ? _value.userReference
          : userReference // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodCode: null == paymentMethodCode
          ? _value.paymentMethodCode
          : paymentMethodCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isMock: freezed == isMock
          ? _value.isMock
          : isMock // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? amountReceived,
      @Id() int id,
      int amount,
      String status,
      String type,
      String userReference,
      String uuid,
      String paymentMethodCode,
      String currencyCode,
      String countryCode,
      String recipient,
      String? description,
      int? isMock,
      DateTime createdAt,
      DateTime? updatedAt,
      String? customerId,
      String? customerName,
      String? customerAddress,
      String? customerPhone});
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountReceived = freezed,
    Object? id = null,
    Object? amount = null,
    Object? status = null,
    Object? type = null,
    Object? userReference = null,
    Object? uuid = null,
    Object? paymentMethodCode = null,
    Object? currencyCode = null,
    Object? countryCode = null,
    Object? recipient = null,
    Object? description = freezed,
    Object? isMock = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? customerAddress = freezed,
    Object? customerPhone = freezed,
  }) {
    return _then(_$_Transaction(
      amountReceived: freezed == amountReceived
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userReference: null == userReference
          ? _value.userReference
          : userReference // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodCode: null == paymentMethodCode
          ? _value.paymentMethodCode
          : paymentMethodCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isMock: freezed == isMock
          ? _value.isMock
          : isMock // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
@Entity(realClass: Transaction)
class _$_Transaction extends _Transaction {
  _$_Transaction(
      {this.amountReceived,
      @Id() this.id = 0,
      required this.amount,
      required this.status,
      required this.type,
      required this.userReference,
      required this.uuid,
      required this.paymentMethodCode,
      required this.currencyCode,
      required this.countryCode,
      required this.recipient,
      this.description,
      this.isMock,
      required this.createdAt,
      this.updatedAt,
      this.customerId,
      this.customerName,
      this.customerAddress,
      this.customerPhone})
      : super._();

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  int? amountReceived;
  @override
  @JsonKey()
  @Id()
  int id;
  @override
  int amount;
  @override
  String status;
  @override
  String type;
  @override
  String userReference;
  @override
  String uuid;
  @override
  String paymentMethodCode;
  @override
  String currencyCode;
  @override
  String countryCode;
  @override
  String recipient;
  @override
  String? description;
  @override
  int? isMock;
  @override
  DateTime createdAt;
  @override
  DateTime? updatedAt;
  @override
  String? customerId;
  @override
  String? customerName;
  @override
  String? customerAddress;
  @override
  String? customerPhone;

  @override
  String toString() {
    return 'Transaction(amountReceived: $amountReceived, id: $id, amount: $amount, status: $status, type: $type, userReference: $userReference, uuid: $uuid, paymentMethodCode: $paymentMethodCode, currencyCode: $currencyCode, countryCode: $countryCode, recipient: $recipient, description: $description, isMock: $isMock, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, customerPhone: $customerPhone)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction extends Transaction {
  factory _Transaction(
      {int? amountReceived,
      @Id() int id,
      required int amount,
      required String status,
      required String type,
      required String userReference,
      required String uuid,
      required String paymentMethodCode,
      required String currencyCode,
      required String countryCode,
      required String recipient,
      String? description,
      int? isMock,
      required DateTime createdAt,
      DateTime? updatedAt,
      String? customerId,
      String? customerName,
      String? customerAddress,
      String? customerPhone}) = _$_Transaction;
  _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  int? get amountReceived;
  set amountReceived(int? value);
  @override
  @Id()
  int get id;
  @Id()
  set id(int value);
  @override
  int get amount;
  set amount(int value);
  @override
  String get status;
  set status(String value);
  @override
  String get type;
  set type(String value);
  @override
  String get userReference;
  set userReference(String value);
  @override
  String get uuid;
  set uuid(String value);
  @override
  String get paymentMethodCode;
  set paymentMethodCode(String value);
  @override
  String get currencyCode;
  set currencyCode(String value);
  @override
  String get countryCode;
  set countryCode(String value);
  @override
  String get recipient;
  set recipient(String value);
  @override
  String? get description;
  set description(String? value);
  @override
  int? get isMock;
  set isMock(int? value);
  @override
  DateTime get createdAt;
  set createdAt(DateTime value);
  @override
  DateTime? get updatedAt;
  set updatedAt(DateTime? value);
  @override
  String? get customerId;
  set customerId(String? value);
  @override
  String? get customerName;
  set customerName(String? value);
  @override
  String? get customerAddress;
  set customerAddress(String? value);
  @override
  String? get customerPhone;
  set customerPhone(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
