import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum AmountInputError { min, max }

extension AmountInputErrorExt on AmountInputError {
  String message(BuildContext _) {
    switch (this) {
      case AmountInputError.min:
        return "Le montant est inférieur au minimum";
      case AmountInputError.max:
        return "Le montant est supérieur au maximum";
      default:
        return "Le montant est invalid";
    }
  }
}

class AmountInput extends FormzInput<int, AmountInputError> {
  final int? min;
  final int? max;
  const AmountInput.pure({this.min, this.max, int? amount}) : super.pure(amount ?? 0);

  const AmountInput.dirty({this.min, this.max, int value = 0})
      : super.dirty(value);

  @override
  AmountInputError? validator(int value) {
    if (min != null && (value < min!)) {
      return AmountInputError.min;
    }
    if (max != null && (value > max!)) {
      return AmountInputError.max;
    }
    return null;
  }
}
