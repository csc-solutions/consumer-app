import 'package:objectbox/objectbox.dart';

@Entity()
class PaymentLog {
  @Id()
  int id;
  String code;
  int amount;
  String serviceName;
  String productName;
  String creditDestination;
  String debitDestination;

  @Property(type: PropertyType.date) // Store as int in milliseconds
  DateTime? createdAt;
  
  PaymentLog({
    this.id = 0,
    required this.code,
    this.amount = 0,
    this.serviceName = "",
    this.productName = "",
    this.creditDestination = "",
    this.debitDestination = "",
    this.createdAt,
  });
}
