import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon.freezed.dart';
part 'coupon.g.dart';

@Freezed()
class Coupon with _$Coupon {
  const factory Coupon({
    @Default("") String code,
    @Default(false) bool enabled,
    @Default(0) int percentage,
    @Default(0) int fixed,
  }) = _Coupon;

  const Coupon._();
  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}
