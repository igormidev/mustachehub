import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/ui/router/mustache_router_delegate.dart';
import 'package:media_query_core/media_query_core.dart';

mixin TabSelectionMixin on Widget {
  abstract final List<ENavigationPossibilities> possibilities;

  void onTabSelected(int index, BuildContext context) {
    final ENavigationPossibilities selectedTab = possibilities[index];

    (Router.of(context).routerDelegate as MustacheRouterDelegate)
        .selectNavigation(selectedTab);
  }
}
