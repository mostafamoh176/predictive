extension StringExtension on String {
  bool get containsUppercase => contains(RegExp(r'[A-Z]'));

  bool get containsLowercase => contains(RegExp(r'[a-z]'));

  bool get containsNumber => contains(RegExp(r'[0-9]'));

  String get extractInteger {
    RegExp regex = RegExp(r'^([^. ]+)', multiLine: true);
    Match? match = regex.firstMatch(this);
    return match?.group(1) ?? '';
  }

  String get extractDecimal {
    RegExp regex = RegExp(r'\.(\d+)\s', multiLine: true);
    Match? match = regex.firstMatch(this);
    return match?.group(1) ?? '';
  }

  String get extractCurrency {
    RegExp regex = RegExp(r'(\s\w+)$', multiLine: true);
    Match? match = regex.firstMatch(this);
    return match?.group(1) ?? '';
  }

  String get firstCapitalize {
    return replaceAllMapped(
      RegExp(r'^(\w)'),
      (Match match) => match.group(0)!.toUpperCase(),
    );
  }

  String get price {
    return replaceAllMapped(
      RegExp(r'^(\w)'),
          (Match match) => match.group(0)!.toUpperCase(),
    );
  }
}

extension DoubleExtension on double {
  int get extractDecimal {
    int wholeNumber = truncate();
    double decimalPart = this - wholeNumber;
    int decimalValue = (decimalPart * 100).toInt();
    return decimalValue;
  }
}
