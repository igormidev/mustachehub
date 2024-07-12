// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/current_template_type_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/package_form_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';

mixin ClearAllDataMixin {
  Future<void> clearAllDependencies(BuildContext context) async {
    await context.read<ContentStringCubit>().clear();
    await context.read<CurrentTemplateTypeCubit>().clear();
    await context.read<PackageFormCubit>().clear();
    await context.read<VariablesCubit>().clear();
    await context.read<VariablesCubit>().clear();
  }
}
