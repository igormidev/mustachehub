import 'package:mustachehub/dashboard/presenter/states/user_fetch_state.dart';

abstract class IUserFetchRepository {
  Future<UserFetchState> getPersistenceUser();
}
