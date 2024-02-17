
import 'package:fleet_consumer/backend/models/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiate_transaction_result.freezed.dart';
part 'initiate_transaction_result.g.dart';

@freezed
class InitiateTransactionResult with _$InitiateTransactionResult {
  factory InitiateTransactionResult({
    required Transaction transaction,
  }) = _InitiateTransactionResult;
	
  factory InitiateTransactionResult.fromJson(Map<String, dynamic> json) =>
			_$InitiateTransactionResultFromJson(json);
}
