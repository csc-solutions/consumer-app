import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum DestinationInputError { invalid }

extension DestinationInputErrorExt on DestinationInputError {
  String message(BuildContext _) {
    return "Le numéro de téléphone n'est invalide";
  }
}

class DestinationInput extends FormzInput<String, DestinationInputError> {
  final String regex;
  const DestinationInput.pure({this.regex = ".*"}) : super.pure('');

  const DestinationInput.dirty(this.regex, {String value = ''})
      : super.dirty(value);

  @override
  DestinationInputError? validator(String value) {
    return RegExp(regex).hasMatch(value)
        ? null
        : DestinationInputError.invalid;
  }
}
