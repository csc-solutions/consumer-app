import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String formatAmount(int amount) {
  var noSimbolInUSFormat =
      NumberFormat.currency(locale: "fr_FR", decimalDigits: 0, symbol: "FCFA");
  return noSimbolInUSFormat.format(amount);
}

AppLocalizations l(BuildContext context) {
  return AppLocalizations.of(context)!;
}
