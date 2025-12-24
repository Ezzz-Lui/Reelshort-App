import 'package:intl/intl.dart';

class CountFormatter {
  static String countFormatterNumber(double number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);

    return formatterNumber;
  }
}
