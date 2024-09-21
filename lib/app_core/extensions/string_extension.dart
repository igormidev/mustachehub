import 'package:mustachehub/create/presenter/mixins/default_id_caster.dart';
import 'package:mason/mason.dart';

extension StringExtension on String {
  String get toMustacheName {
    return _useIdCast.tryValidCast(this)?.camelCase ?? camelCase;
  }
}

const _UseIdCast _useIdCast = _UseIdCast();

class _UseIdCast with DefaultIdCaster {
  const _UseIdCast();
}
