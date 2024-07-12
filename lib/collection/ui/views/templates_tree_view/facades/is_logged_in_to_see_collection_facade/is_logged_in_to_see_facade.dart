import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/pages/empty_collection_indicator_page.dart';

class IsLoggedInToSeeFacade extends StatelessWidget {
  final Widget child;
  const IsLoggedInToSeeFacade({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      buildWhen: (previous, current) =>
          previous.isUserLoggedIn != current.isUserLoggedIn,
      builder: (context, state) {
        if (state.isUserLoggedIn) {
          return child;
        }

        return const EmptyCollectionIndicatorPage();
      },
    );
  }
}
