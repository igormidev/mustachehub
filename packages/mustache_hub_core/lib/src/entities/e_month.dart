enum EMonth {
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december;

  EMonth get previousMonth {
    switch (this) {
      case EMonth.january:
        return EMonth.december;
      case EMonth.february:
        return EMonth.january;
      case EMonth.march:
        return EMonth.february;
      case EMonth.april:
        return EMonth.march;
      case EMonth.may:
        return EMonth.april;
      case EMonth.june:
        return EMonth.may;
      case EMonth.july:
        return EMonth.june;
      case EMonth.august:
        return EMonth.july;
      case EMonth.september:
        return EMonth.august;
      case EMonth.october:
        return EMonth.september;
      case EMonth.november:
        return EMonth.october;
      case EMonth.december:
        return EMonth.november;
    }
  }

  int get number => index + 1;

  static EMonth fromDateTime(DateTime time) {
    return switch (time.month) {
      DateTime.january => EMonth.january,
      DateTime.february => EMonth.february,
      DateTime.march => EMonth.march,
      DateTime.april => EMonth.april,
      DateTime.may => EMonth.may,
      DateTime.june => EMonth.june,
      DateTime.july => EMonth.july,
      DateTime.august => EMonth.august,
      DateTime.september => EMonth.september,
      DateTime.october => EMonth.october,
      DateTime.november => EMonth.november,
      DateTime.december => EMonth.december,
      int() => throw UnimplementedError(),
    };
  }
}
