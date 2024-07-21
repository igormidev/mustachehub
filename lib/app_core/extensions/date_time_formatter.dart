import 'package:mustache_hub_core/mustache_hub_core.dart';

extension DateTimeFormatter on DateTime {
  String get namedDisplayDate {
    final month = EMonth.fromDateTime(this);

    return '$day of ${month.name}, $year';
  }

  String get namedDisplayDateWithHour {
    return '$namedDisplayDate at ${'$hour'.padLeft(2, '0')}:${'$minute'.padLeft(2, '0')}';
  }
}
