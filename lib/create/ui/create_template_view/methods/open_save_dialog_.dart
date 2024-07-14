import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/theme/components/custom_bottom_sheet.dart';
import 'package:mustachehub/create/presenter/cubits/cleaning_dependencies_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/current_template_type_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/edit_model_info_display_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/package_form_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/suggestion_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/tab_controll_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/template_upload_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/ui/create_template_view/bottom_sheets/save_template_bottom_sheet/save_template_bottom_sheet.dart';

mixin OpenSaveDialog {
  void openSaveDialog(BuildContext context) {
    final contentCubit = context.read<ContentStringCubit>();
    final variablesCubit = context.read<VariablesCubit>();
    final packageFormCubit = context.read<PackageFormCubit>();
    final currentTemplateTypeCubit = context.read<CurrentTemplateTypeCubit>();
    final templateUploadCubit = context.read<TemplateUploadCubit>();
    final cleaningDependenciesCubit = context.read<CleaningDependenciesCubit>();
    final editModelInfoDisplayCubit = context.read<EditModelInfoDisplayCubit>();
    final suggestionCubit = context.read<SuggestionCubit>();
    final tabControllCubit = context.read<TabControllCubit>();

    showCustomBottomSheet(
      context: context,
      horizontalPadding: 20,
      verticalPadding: 10,
      child: SaveTemplateBottomSheet(
        tabControllCubit: tabControllCubit,
        suggestionCubit: suggestionCubit,
        editModelInfoDisplayCubit: editModelInfoDisplayCubit,
        currentTemplateTypeCubit: currentTemplateTypeCubit,
        contentCubit: contentCubit,
        variablesCubit: variablesCubit,
        templateUploadCubit: templateUploadCubit,
        packageFormCubit: packageFormCubit,
        cleaningDependenciesCubit: cleaningDependenciesCubit,
      ),
    );
  }
}
