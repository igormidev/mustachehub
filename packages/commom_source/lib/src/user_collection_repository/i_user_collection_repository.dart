import 'package:result_dart/result_dart.dart';

import 'package:mustache_hub_core/mustache_hub_core.dart';

abstract class IUserCollectionRepository {
  Future<Result<UserCollectionRoot, SourceError>> getUserCollection();
  Future<Result<UserCollectionRoot, SourceError>> updateUserCollection({
    required UserCollection newCollection,
  });
}
