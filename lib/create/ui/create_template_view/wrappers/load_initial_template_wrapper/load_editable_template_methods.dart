import 'dart:async';

import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:commom_states/states/user_collections_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/dtos/package_form_data.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/current_template_type_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/editable_template_fetch_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/package_form_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/mixins/clear_all_data_mixin.dart';
import 'package:mustachehub/create/ui/create_template_view/wrappers/load_initial_template_wrapper/load_editable_template_wrapper.dart';

mixin LoadEditableTemplateMethods
    on State<LoadEditableTemplateWrapper>, ClearAllDataMixin {
  @override
  void initState() {
    super.initState();
    setCurrentCollection();
  }

  void setCurrentCollection() async {
    final String? templateUUID = widget.templateUUID;

    final selectedTemplate = context.read<CurrentTemplateTypeCubit>();
    final Template? selectedTemplateModel = selectedTemplate.state.map(
      withExistingTemplate: (value) => value.template,
      creating: (_) => null,
    );

    if (selectedTemplateModel != null && templateUUID == null) {
      await Future.delayed(const Duration(milliseconds: 300));
      context.go('/createMustache?templateId=${selectedTemplateModel.id}');
      return;
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
      final templateFetch = context.read<EditableTemplateFetchCubit>();
      unawaited(templateFetch.getTemplateById(id: templateUUID));
    } else {
      setTemplateInAllDependencies(localTemplate);
    }
  }

  void setTemplate(Template template) {
    context.read<EditableTemplateFetchCubit>().setInitial();
    setTemplateInAllDependencies(template);
  }

  void setTemplateInAllDependencies(Template template) async {
    clearAllDependencies(context);

    // Set the text
    final content = context.read<ContentStringCubit>();
    content.setStateFromOutput(template.output);

    // Set the type/mode
    final currentTemplate = context.read<CurrentTemplateTypeCubit>();
    currentTemplate.declareThatUserIsEditingTemplate(
      template: template,
    );

    // Set the package info
    final packageInfoCubit = context.read<PackageFormCubit>();
    packageInfoCubit.set(
      newFormData: PackageFormData.editingMyPackage(
        title: template.info.name,
        description: template.info.description,
        previousInfoPackage: template.info,
      ),
    );

    // Set variables
    final variableCubit = context.read<VariablesCubit>();
    variableCubit.set(
      textPipes: template.payload.textPipes,
      booleanPipes: template.payload.booleanPipes,
      modelPipes: template.payload.modelPipes,
    );
  }
}
