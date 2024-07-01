import 'package:commom_states/states/user_collections_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/cubits/selected_template_cubit.dart';
import 'package:mustachehub/generate/ui/views/generate_template_view/generate_template_view.dart';

mixin GenerateTemplateMethods on State<GenerateTemplateView> {
  void setCurrentCollection(UserCollectionsState state) {
    final String? templateUUID = widget.templateUUID;
    if (templateUUID == null) return;

    final Template? template = state.whenOrNull(
      withData: (UserCollectionRoot userCollections) {
        return userCollections.getTemplateWithId(
          templateUUID,
        );
      },
    );

    if (template == null) return;

    final selectedTemplate = context.read<SelectedTemplateCubit>();
    selectedTemplate.setTemplate(template);
  }
}
