import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum MomoNumberInputError { invalid }

enum MomoNumberType { none, om, mtn }

extension MomoNumberInputErrorExt on MomoNumberInputError {
  String message(BuildContext _) {
    return "Numéro invalide";
  }
}

class MomoNumberInput extends FormzInput<String, MomoNumberInputError> {
  static const orangeRegexp =
      "((|(0{2}))?237)?((69|655|656|657|658|659)([0-9]{6,7}))\$";
  static const mtnRegexp =
      "((|(0{2}))?237)?((67|650|651|652|653|654|680|681|682|683)([0-9]{6,7}))\$";

  static const orangeRegexpStart = "((|(0{2}))?237)?((69|655|656|657|658|659))";
  static const mtnRegexpStart =
      "((|(0{2}))?237)?((67|650|651|652|653|654|680|681|682|683))";

  const MomoNumberInput.pure() : super.pure('');

  MomoNumberType? getType() {
    if (RegExp(orangeRegexp).hasMatch(value)) {
      return MomoNumberType.om;
    }
    if (RegExp(mtnRegexp).hasMatch(value)) {
      return MomoNumberType.mtn;
    }
    return null;
  }

  MomoNumberType? guessType() {
    if (RegExp(orangeRegexpStart).hasMatch(value)) {
      return MomoNumberType.om;
    }
    if (RegExp(mtnRegexpStart).hasMatch(value)) {
      return MomoNumberType.mtn;
    }
    return null;
  }

  const MomoNumberInput.dirty({String value = ''}) : super.dirty(value);

  @override
  MomoNumberInputError? validator(String value) {
    return getType() != null ? null : MomoNumberInputError.invalid;
  }
}
