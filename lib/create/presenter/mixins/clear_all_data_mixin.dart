import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/current_template_type_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/edit_model_info_display_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/package_form_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/suggestion_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/tab_controll_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/template_upload_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';

mixin ClearAllDataMixin {
  Future<void> clearAllDependencies(BuildContext context) async {
    context.read<ContentStringCubit>().resetToDefault();
    context
        .read<CurrentTemplateTypeCubit>()
        .declareThatUserIsCreatingTemplate();
    context.read<EditModelInfoDisplayCubit>().stopEditingInfo();
    context.read<PackageFormCubit>().setStateToLoading();
    context.read<SuggestionCubit>().setNormalState();
    context.read<TabControllCubit>().changeTab(0);
    context.read<TemplateUploadCubit>().setNormal();
    context.read<VariablesCubit>().setInitial();

    await Future.delayed(const Duration(milliseconds: 1000));

    // await context.read<ContentStringCubit>().clear();
    // await context.read<CurrentTemplateTypeCubit>().clear();
    // await context.read<PackageFormCubit>().clear();
    // await context.read<VariablesCubit>().clear();
    // await context.read<VariablesCubit>().clear();
  }
}
