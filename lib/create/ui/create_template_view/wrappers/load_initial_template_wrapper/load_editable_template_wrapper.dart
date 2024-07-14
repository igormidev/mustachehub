import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/cubits/editable_template_fetch_cubit.dart';
import 'package:mustachehub/create/presenter/mixins/clear_all_data_mixin.dart';
import 'package:mustachehub/create/presenter/states/editable_template_fetch_state.dart';
import 'package:mustachehub/create/ui/create_template_view/facades/load_editable_template_facade/load_editable_template_facade.dart';
import 'package:mustachehub/create/ui/create_template_view/wrappers/load_initial_template_wrapper/load_editable_template_methods.dart';

class LoadEditableTemplateWrapper extends StatefulWidget {
  final String? templateUUID;
  final Widget child;
  const LoadEditableTemplateWrapper({
    super.key,
    required this.templateUUID,
    required this.child,
  });

  @override
  State<LoadEditableTemplateWrapper> createState() =>
      _LoadEditableTemplateWrapperState();
}

class _LoadEditableTemplateWrapperState
    extends State<LoadEditableTemplateWrapper>
    with ClearAllDataMixin, LoadEditableTemplateMethods {
  @override
  Widget build(BuildContext context) {
    return BlocListener<EditableTemplateFetchCubit, EditableTemplateFetchState>(
      listener: (context, state) {
        state.whenOrNull(
          successFetch: setTemplate,
        );
      },
      child: LoadEditableTemplateFacade(
        child: widget.child,
      ),
    );
  }
}
