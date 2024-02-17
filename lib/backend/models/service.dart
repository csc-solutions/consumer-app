import 'package:fleet_consumer/backend/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@Freezed()
class Service with _$Service {
  const factory Service({
    @Default("") String image,
    @Default("") String name,
    @Default("") String description,
    @Default("") String kind,
    @Default(false) bool enabled,
    @Default([]) List<Product> products,
    @JsonKey(name: "min_amount") @Default(null) int? minAmount,
    @JsonKey(name: "max_amount") @Default(null) int? maxAmount,
    @Default(null) int? amount,
    @JsonKey(name: "form_input_label") @Default("") String formInputLabel,
    @JsonKey(name: "form_input_placeholder")
    @Default("")
    String formInputPlaceholder,
    @JsonKey(name: "form_input_regex") @Default("") String formInputRegex,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
