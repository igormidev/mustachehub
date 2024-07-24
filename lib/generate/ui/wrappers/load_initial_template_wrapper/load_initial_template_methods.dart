import 'dart:async';

import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:commom_states/states/user_collections_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/cubits/selected_template_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/template_fetch_cubit.dart';
import 'package:mustachehub/generate/ui/wrappers/load_initial_template_wrapper/load_initial_template_wrapper.dart';

mixin LoadInitialTemplateMethods on State<LoadInitialTemplateWrapper> {
  @override
  void initState() {
    super.initState();
    setCurrentCollection();
  }

  void setCurrentCollection() async {
    final String? templateUUID = widget.templateUUID;

    final selectedTemplate = context.read<SelectedTemplateCubit>();
    final Template? selectedTemplateModel = selectedTemplate.state.map(
      withData: (value) => value.template,
      unselected: (_) => null,
    );

    if (selectedTemplateModel != null && templateUUID == null) {
      await Future.delayed(const Duration(milliseconds: 300));
      context.go('/generateText?templateId=${selectedTemplateModel.id}');
      return;
    }

    if (templateUUID != null) {
      selectedTemplate.unselect();
    }

    final userCollection = context.read<UserCollectionsCubit>();
    final UserCollectionsState state = userCollection.state;

    if (templateUUID == null) return;

    final Template? localTemplate = state.whenOrNull(
      withData: (UserCollectionRoot userCollections) {
        return userCollections.getTemplateWithId(
          templateUUID,
        );
      },
    );

    if (localTemplate == null) {
      // It's not local, let's try to fetch that template then.
      final templateFetch = context.read<TemplateFetchCubit>();
      unawaited(templateFetch.getTemplateById(id: templateUUID));
    } else {
      final selectedTemplate = context.read<SelectedTemplateCubit>();
      selectedTemplate.setTemplate(localTemplate);
    }
  }

  void setTemplate(Template template) {
    final selectedTemplate = context.read<SelectedTemplateCubit>();
    context.read<TemplateFetchCubit>().setInitial();
    selectedTemplate.setTemplate(template);
  }
}
