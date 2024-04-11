import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/repositories/interfaces/i_template_repository.dart';
import 'package:mustachehub/create/presenter/state/current_template_type_state.dart';

class TemplateRepositoryImpl implements ITemplateRepository {
  final FirebaseFirestore _firestore;

  TemplateRepositoryImpl({
    FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<CurrentTemplateTypeState> getTemplate({
    required String packageId,
  }) async {
    final infoReference =
        await _firestore.doc('packages/$packageId/info').get();
    final expectedPayloadReference =
        await _firestore.doc('packages/$packageId/expectedPayload').get();

    final infoJson = infoReference.data();
    final payloadJson = expectedPayloadReference.data();

    if (infoJson == null || payloadJson == null) {
      return CurrentTemplateTypeState.creating();
    }

    final templateInfo = PackageInfo.fromJson(infoJson);
    final expectedPayloadInfo = ExpectedPayload.fromJson(payloadJson);

    return CurrentTemplateTypeState.withExistingTemplate(
      template: Template(
        id: packageId,
        info: templateInfo,
        payload: expectedPayloadInfo,
      ),
    );
  }
}
