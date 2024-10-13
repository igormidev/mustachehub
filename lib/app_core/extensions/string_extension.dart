import 'package:mustachehub/create/presenter/mixins/default_id_caster.dart';
import 'package:mason/mason.dart';

extension StringExtension on String {
  String get toMustacheName {
    return _useIdCast.tryValidCast(this)?.camelCase ?? camelCase;
  }

  String get capitalized =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.capitalized)
      .join(' ');
}

const _UseIdCast _useIdCast = _UseIdCast();

class _UseIdCast with DefaultIdCaster {
  const _UseIdCast();
}
