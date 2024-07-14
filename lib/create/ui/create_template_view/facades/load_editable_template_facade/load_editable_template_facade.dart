import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/theme/components/empty_template_input_section.dart';
import 'package:mustachehub/create/presenter/cubits/editable_template_fetch_cubit.dart';
import 'package:mustachehub/create/presenter/states/editable_template_fetch_state.dart';

class LoadEditableTemplateFacade extends StatelessWidget {
  final Widget child;
  const LoadEditableTemplateFacade({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditableTemplateFetchCubit, EditableTemplateFetchState>(
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
