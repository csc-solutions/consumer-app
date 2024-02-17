import 'package:intl/intl.dart';

String formatAmount(int amount) {
  var noSimbolInUSFormat =
      NumberFormat.currency(locale: "fr_FR", decimalDigits: 0, symbol: "FCFA");
  return noSimbolInUSFormat.format(amount);
}
