import 'package:mustachehub/create/presenter/state/current_template_type_state.dart';

abstract class ITemplateRepository {
  Future<CurrentTemplateTypeState> getTemplate({
    required String packageId,
  });
}
