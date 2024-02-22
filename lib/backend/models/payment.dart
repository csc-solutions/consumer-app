import 'package:fleet_consumer/backend/models/payment_log.dart';
import 'package:fleet_consumer/backend/models/payment_status_enum.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

int _stringToInt(dynamic number) {
  if (number is String) {
    return double.parse(number).toInt();
  }
  return number;
}

@Freezed()
class Payment with _$Payment {
  const factory Payment({
    @Default("") String uuid,
    @Default(PaymentStatusEnum.draft) PaymentStatusEnum status,
    @Default("") String code,
    @JsonKey(name: "debit_destination") @Default("") String debitDestination,
    @JsonKey(name: "credit_destination") @Default("") String creditDestination,
    @JsonKey(fromJson: _stringToInt) @Default(0) int amount,
    @Default(Product()) Product product,
    @Default(Service()) Service service,
    @JsonKey(name: "service_payment")
    @Default(Service())
    Service servicePayment,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _Payment;

  const Payment._();

  PaymentLog get asPaymentLog {
    return PaymentLog(
        code: code,
        serviceName: service.name,
        productName: product.name,
        amount: amount,
        serviceImage: service.image,
        creditDestination: creditDestination,
        serviceUuid: service.uuid,
        productUuid: product.uuid,
        debitDestination: debitDestination,
        createdAt: createdAt);
  }

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}
