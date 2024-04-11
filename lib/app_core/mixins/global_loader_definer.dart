import 'package:commom_states/states/loading_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/app_routes.dart';

mixin GlobalLoadingEnforcer<T> on Cubit<T> {
  @override
  void onChange(Change<T> change) {
    super.onChange(change);
    final t = change.nextState.toString().toLowerCase();
    final isLoading = t.contains('loading') || t.contains('processing');
    if (isLoading) {
      NavigatorService.i.rootNavigatorKey.currentContext!.setGlobalLoading();
    } else {
      NavigatorService.i.rootNavigatorKey.currentContext!.endGlobalLoading();
    }
  }
}
