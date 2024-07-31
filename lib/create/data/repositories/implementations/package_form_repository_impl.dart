import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:commom_source/commom_source.dart';
import 'package:mustachehub/create/data/repositories/interfaces/i_package_form_repository.dart';
import 'package:mustachehub/create/presenter/states/template_upload_state.dart';
import 'package:uuid/uuid.dart';

class PackageFormRepositoryImpl implements IPackageFormRepository {
  final IUserCollectionRepository _userTemplatesRepository;
  final FirebaseFirestore _firestore;
  final Uuid _uuid;
  final FirebaseAuth _auth;

  PackageFormRepositoryImpl({
    FirebaseFirestore? firestore,
    FirebaseAuth? auth,
    required IUserCollectionRepository userTemplatesRepository,
    Uuid? uuid,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _uuid = uuid ?? const Uuid(),
        _auth = auth ?? FirebaseAuth.instance,
        _userTemplatesRepository = userTemplatesRepository;

  @override
  Future<TemplateUploadState> createPackage({
    required ContentOutput output,
    required PackageInfo packageInfo,
    required ExpectedPayload expectedPayload,
  }) async {
    final now = DateTime.now();
    final userId = _auth.currentUser?.uid;
    final userEmail = _auth.currentUser?.email;
    if (userId == null || userEmail == null) {
      return TemplateUploadState.withError(
        message: SourceError.notLoggedIn().message,
      );
    }

    return _wrapper(
      mapper: (UserCollectionRoot collection) async {
        final uuid = _uuid.v4();
        final template = Template(
          id: uuid,
          info: packageInfo,
          output: output,
          metadata: TemplateMetadata(
            createdAt: now,
            updatedAt: now,
            isPrivate: false,
            usersPermission: {
              userEmail: TemplatePermissions.fullAccess.name,
            },
          ),
          payload: expectedPayload,
        );

        final newCollection = collection.copyWith(
          children: [
            ...collection.children,
            UserCollection.file(
              template: template,
            ),
          ],
        );

        final collectionRef = _firestore.collection('collection').doc(userId);
        final templateRef = _firestore.collection('templates').doc(template.id);
        final indexesJson = newCollection.toIndexes.toJson();
        final templateJson = template.toJson();
        await _firestore.runTransaction((transaction) async {
          transaction
              .set(collectionRef, indexesJson)
              .set(templateRef, templateJson);
        });

        return TemplateUploadState.success(
          newCollectionWithUpdatedPackages: newCollection,
        );
      },
    );
  }

  @override
  Future<TemplateUploadState> updatePackage({
    required Template template,
  }) async {
    final now = DateTime.now();
    final userId = _auth.currentUser?.uid;
    final userEmail = _auth.currentUser?.uid;
    if (userId == null || userEmail == null) {
      return TemplateUploadState.withError(
        message: SourceError.notLoggedIn().message,
      );
    }

    return _wrapper(
      mapper: (UserCollectionRoot collection) async {
        final UserCollectionRoot newCollection =
            collection.deepEditTemplateWithId(
          template.id,
          (oldTemplate) => template.copyWith(
            info: template.info,
            payload: template.payload,
            output: template.output,
            metadata:
                template.metadata.copyWith(updatedAt: now, usersPermission: {
              ...oldTemplate.metadata.usersPermission,
              userEmail: TemplatePermissions.fullAccess.name,
            }),
          ),
        );

        final collectionRef = _firestore.collection('collection').doc(userId);
        final templateRef = _firestore.collection('templates').doc(template.id);
        await _firestore.runTransaction((transaction) async {
          transaction
              .set(collectionRef, newCollection.toIndexes.toJson())
              .set(templateRef, template.toJson());
        });

        return TemplateUploadState.success(
          newCollectionWithUpdatedPackages: newCollection,
        );
      },
    );
  }

  Future<TemplateUploadState> _wrapper({
    required Future<TemplateUploadState> Function(
            UserCollectionRoot newCollection)
        mapper,
  }) async {
    final newestUserCollection =
        await _userTemplatesRepository.getUserCollection();
    return newestUserCollection.fold(mapper, (SourceError failure) {
      return TemplateUploadState.withError(
        message: failure.message,
      );
    });
  }
}
