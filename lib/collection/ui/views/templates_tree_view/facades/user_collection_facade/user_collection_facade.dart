import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:commom_states/states/user_collections_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/theme/components/empty_template_input_section.dart';
import 'package:mustachehub/app_core/theme/default_widgets/default_loading_page.dart';

class UserCollectionFacade extends StatelessWidget {
  final Widget child;
  const UserCollectionFacade({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCollectionsCubit, UserCollectionsState>(
      builder: (context, state) {
        return state.when(
          error: (message) => EmptyIndicatorSection.error(
            text: message,
            willHaveCircleAvatarInDarkMode: false,
          ),
          loading: DefaultLoadingPage.new,
          processing: (_) => child,
          withData: (_) => child,
        );
      },
    );
  }
}
