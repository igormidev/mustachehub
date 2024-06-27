import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:result_dart/result_dart.dart';
import 'package:uuid/uuid.dart';

import '../template_repository/i_template_repository.dart';
import 'i_user_collection_repository.dart';

class UserCollectionRepositoryImpl implements IUserCollectionRepository {
  final ITemplateRepository _templateRepository;
  final FirebaseAuth _auth;
  final Uuid _uuid;
  final FirebaseFirestore _firestore;

  UserCollectionRepositoryImpl({
    required ITemplateRepository templateRepository,
    FirebaseFirestore? firestore,
    FirebaseAuth? auth,
    Uuid? uuid,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _auth = auth ?? FirebaseAuth.instance,
        _uuid = uuid ?? const Uuid(),
        _templateRepository = templateRepository;

  @override
  Future<Result<UserCollectionRoot, SourceError>> getUserCollection() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      return SourceError.notLoggedIn().toFailure();
    }

    try {
      final response =
          await _firestore.collection('collection').doc(userId).get();

      final responseData = response.data();

      if (!response.exists || responseData == null) {
        return updateUserCollection(newCollection: UserCollection.root());
      }

      final UserCollectionIndexesRoot userCollectionIndexes;

      try {
        final parsedUserCollection =
            UserCollectionIndexes.fromJson(responseData);
        final root = parsedUserCollection.mapOrNull(
          root: (value) => value,
        );

        if (root == null) {
          return SourceError.standard(
            message:
                'Fatal failure because the server is returning an invalid collection. '
                'This is a server error, the failure is not on your side. Try again later. '
                'If the error persists, please contact support.',
          ).toFailure();
        }

        userCollectionIndexes = root;
      } catch (_) {
        return SourceError.standard(
          message:
              'Fatal failure while trying to parse collection from server. '
              'Try again later. If the error persists, please contact support.',
        ).toFailure();
      }

      Future<Result<UserCollectionFile, SourceError>> getUserCollectionFile(
          String templateUuid) async {
        final templateResult = await _templateRepository.getTemplate(
          templateId: templateUuid,
        );

        return templateResult
            .map(
              (template) => UserCollectionFile(template: template),
            )
            .flatMapError(
              (error) => SourceError.standard(
                message:
                    'Fatal failure while trying to get template from server. '
                    'Try again later. If the error persists, please contact support.',
              ).toFailure(),
            );
      }

      Future<Result<UserCollectionFolder, SourceError>> getUserCollectionFolder(
        UserCollectionIndexesFolder collections,
      ) async {
        final List<UserCollectionFolder> folders = [];
        final List<UserCollectionFile> files = [];

        for (final node in collections.children) {
          // If error, return error
          final possibleError = await node.mapOrNull<Future<SourceError?>>(
            folder: (value) async {
              // final List<UserCollection> children = [];
              final List<UserCollection> children = [];

              for (final child in value.children) {
                final res = await child.mapOrNull<Future<SourceError?>>(
                  folder: (value) async {
                    final response = await getUserCollectionFolder(value);
                    return response.fold((success) {
                      children.add(success);
                      return null;
                    }, (failure) {
                      return failure;
                    });
                  },
                  file: (value) async {
                    final response =
                        await getUserCollectionFile(value.templateUuid);

                    return response.fold((success) {
                      files.add(success);
                      return null;
                    }, (failure) {
                      return failure;
                    });
                  },
                );

                if (res != null) {
                  return res;
                }
              }

              folders.add(
                UserCollectionFolder(
                  uuid: _uuid.v4(),
                  name: value.name,
                  description: value.description,
                  children: children,
                ),
              );

              return null;
            },
            file: (value) async {
              final response = await getUserCollectionFile(value.templateUuid);

              return response.fold((success) {
                files.add(success);
                return null;
              }, (failure) {
                return failure;
              });
            },
          );

          if (possibleError != null) {
            return possibleError.toFailure();
          }
        }

        return UserCollectionFolder(
          uuid: _uuid.v4(),
          name: collections.name,
          description: collections.description,
          children: [
            ...folders,
            ...files,
          ],
        ).toSuccess();
      }

      final foldersIndexes = userCollectionIndexes.children
          .whereType<UserCollectionIndexesFolder>();

      final filesIndexes =
          userCollectionIndexes.children.whereType<UserCollectionIndexesFile>();

      final List<UserCollectionFolder> folders = [];
      for (final e in foldersIndexes) {
        final response = await getUserCollectionFolder(e);
        final resp = response.fold<SourceError?>((success) {
          folders.add(success);
          return null;
        }, (failure) {
          return failure;
        });

        if (resp != null) {
          return resp.toFailure();
        }
      }

      final List<UserCollectionFile> files = [];
      for (final e in filesIndexes) {
        final response = await getUserCollectionFile(e.templateUuid);
        final resp = response.fold<SourceError?>((success) {
          files.add(success);
          return null;
        }, (failure) {
          return failure;
        });

        if (resp != null) {
          return resp.toFailure();
        }
      }

      return UserCollectionRoot(
        children: [
          ...folders,
          ...files,
        ],
      ).toSuccess();
    } catch (_) {
      return SourceError.standard(
              message: 'Fatal failure happend while trying to get your '
                  'collection from server. Try again later. If the '
                  'error persists, please contact support.')
          .toFailure();
    }
  }

  @override
  Future<Result<UserCollectionRoot, SourceError>> updateUserCollection({
    required UserCollection newCollection,
  }) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      return SourceError.notLoggedIn().toFailure();
    }

    final UserCollectionRoot? rootModel = newCollection.mapOrNull(
      root: (value) => value,
    );

    final UserCollectionIndexesRoot? userCollectionIndexes =
        rootModel?.toIndexes;

    if (rootModel == null || userCollectionIndexes == null) {
      return SourceError.standard(
        message:
            'Fatal failure because the server is receiving an invalid collection. '
            'This is a server error, the failure is not on your side. Try again later. '
            'If the error persists, please contact support.',
      ).toFailure();
    }

    try {
      await _firestore.collection('collection').doc(userId).set(
            userCollectionIndexes.toJson(),
            SetOptions(merge: true),
          );

      return rootModel.toSuccess();
    } catch (_) {
      return SourceError.standard(
        message: 'Fatal failure while trying to update collection in server. '
            'Try again later. If the error persists, please contact support.',
      ).toFailure();
    }
  }
}
