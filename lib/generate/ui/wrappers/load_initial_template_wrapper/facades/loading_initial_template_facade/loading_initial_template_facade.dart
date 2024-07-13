import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/theme/components/empty_template_input_section.dart';
import 'package:mustachehub/generate/presenter/cubits/template_fetch_cubit.dart';
import 'package:mustachehub/generate/presenter/states/template_fetch_state.dart';

class LoadingInitialTemplateFacade extends StatelessWidget {
  final Widget child;
  const LoadingInitialTemplateFacade({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TemplateFetchCubit, TemplateFetchState>(
      builder: (context, state) {
        const loadingWidget = EmptyIndicatorSection.loading(
          text: 'Loading template...',
          willHaveCircleAvatarInDarkMode: false,
        );

        return state.when(
          initial: () => child,
          withError: (errorMessage) => EmptyIndicatorSection.error(
            text: errorMessage,
            willHaveCircleAvatarInDarkMode: false,
          ),
          loading: () => loadingWidget,
          successFetch: (_) => loadingWidget,
        );
      },
    );
  }
}
