import 'package:commom_states/states/session_state.dart';
import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_query_core/media_query_core.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/extensions/default_state_extension.dart';
import 'package:mustachehub/app_core/theme/components/mustache_button_loader.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/implementations/show_need_to_log_in_dialog.dart';
import 'package:mustachehub/app_core/utils/device_utils.dart';
import 'package:mustachehub/auth/ui/widgets/signin_animation.dart';
import 'package:mustachehub/create/presenter/cubits/cleaning_dependencies_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/current_template_type_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/edit_model_info_display_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/package_form_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/suggestion_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/tab_controll_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/template_upload_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/states/cleaning_dependencies_state.dart';
import 'package:mustachehub/create/presenter/states/content_string_state.dart';
import 'package:mustachehub/create/presenter/states/package_form_state.dart';
import 'package:mustachehub/create/presenter/states/template_upload_state.dart';
import 'package:mustachehub/create/ui/create_template_view/bottom_sheets/save_template_bottom_sheet/wrappers/clean_dependencies_after_success_wrapper.dart';
import 'package:mustachehub/create/ui/create_template_view/bottom_sheets/save_template_bottom_sheet/wrappers/template_upload_success_wrapper.dart';

part 'save_template_bottom_sheet_methods.dart';

class SaveTemplateBottomSheet extends StatefulWidget {
  final ContentStringCubit contentCubit;
  final CurrentTemplateTypeCubit currentTemplateTypeCubit;
  final VariablesCubit variablesCubit;
  final TemplateUploadCubit templateUploadCubit;
  final PackageFormCubit packageFormCubit;
  final CleaningDependenciesCubit cleaningDependenciesCubit;
  final EditModelInfoDisplayCubit editModelInfoDisplayCubit;
  final SuggestionCubit suggestionCubit;
  final TabControllCubit tabControllCubit;
  const SaveTemplateBottomSheet({
    super.key,
    required this.contentCubit,
    required this.currentTemplateTypeCubit,
    required this.variablesCubit,
    required this.templateUploadCubit,
    required this.packageFormCubit,
    required this.cleaningDependenciesCubit,
    required this.editModelInfoDisplayCubit,
    required this.suggestionCubit,
    required this.tabControllCubit,
  });

  @override
  State<SaveTemplateBottomSheet> createState() =>
      _SaveTemplateBottomSheetState();
}

class _SaveTemplateBottomSheetState extends State<SaveTemplateBottomSheet>
    with ValidatorsMixins, SaveTemplateBottomSheetMethods {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ContentStringCubit>.value(
            value: widget.contentCubit,
          ),
          BlocProvider<CurrentTemplateTypeCubit>.value(
            value: widget.currentTemplateTypeCubit,
          ),
          BlocProvider<VariablesCubit>.value(
            value: widget.variablesCubit,
          ),
          BlocProvider<TemplateUploadCubit>.value(
            value: widget.templateUploadCubit,
          ),
          BlocProvider<PackageFormCubit>.value(
            value: widget.packageFormCubit,
          ),
          BlocProvider<CleaningDependenciesCubit>.value(
            value: widget.cleaningDependenciesCubit,
          ),
          BlocProvider<EditModelInfoDisplayCubit>.value(
            value: widget.editModelInfoDisplayCubit,
          ),
          BlocProvider<TabControllCubit>.value(
            value: widget.tabControllCubit,
          ),
          BlocProvider<SuggestionCubit>.value(
            value: widget.suggestionCubit,
          ),
        ],
        child: CleanDependenciesAfterSuccessWrapper(
          child: TemplateUploadSuccessWrapper(
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  const VisibilityWidthBased.fromMediaQueryScreenWidth(
                    minimumWidth: ScreenSize.x900,
                    child: Expanded(
                      child: ImaginationImage(),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        VisibilityWidthBased.fromMediaQueryScreenWidth(
                          maximumWidth: ScreenSize.x900,
                          child: Expanded(
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  width: 400,
                                  child: Transform.scale(
                                    scale: 1.5,
                                    child: const ImagineAnimation(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          isEditing ? 'Save template' : 'Create template',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          isEditing
                              ? 'After saving this new version the previous version of the template will no longer more exist. '
                                  'Anyone accessing your template will now see the latest version. '
                                  'Currently there is no backup system in mustache hub, so this will be a destructive '
                                  'action to your last version of the template and this action can not be redone. '
                              : 'What does it mean to create a template? '
                                  'Well, it will be availible for you in your collection. '
                                  'Also, it will be availible for anyone with the link to visualize it (but only you will have the capability of editing it). '
                                  'Note: You can delete an created template whenever you want.',
                          style: DeviceUtils.isDesktop
                              ? Theme.of(context).textTheme.bodyLarge
                              : Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 32),
                        TextFormField(
                          controller: _nameEC,
                          decoration: InputDecoration(
                            labelText: 'Template name',
                            hintText: DeviceUtils.isDesktop
                                ? 'The name that will identify your template in your collection'
                                : 'A template name identifier',
                          ),
                          validator: (val) => combineValidators([
                            () => isNotEmpty(val),
                            () => lenghtHasToBeAtLeast(4, val),
                          ]),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _descriptionEC,
                          decoration: InputDecoration(
                            labelText: 'Template description',
                            hintText: DeviceUtils.isDesktop
                                ? 'A brief description of what you template does and what kind of output it generates'
                                : 'A brief description of your template',
                          ),
                          validator: (val) => combineValidators([
                            () => isNotEmpty(val),
                            () => lenghtHasToBeAtLeast(20, val),
                          ]),
                        ),
                        const SizedBox(height: 16),
                        Align(
                          child: BlocBuilder<CleaningDependenciesCubit,
                              CleaningDependenciesState>(
                            builder: (context, state) {
                              final isDependenciesLoading =
                                  state.isStateLoading;
                              return BlocBuilder<TemplateUploadCubit,
                                  TemplateUploadState>(
                                bloc: widget.templateUploadCubit,
                                builder: (context, state) {
                                  final isLoading = state.isStateLoading ||
                                      isDependenciesLoading;

                                  return FilledButton.icon(
                                    label: Text(
                                      isLoading
                                          ? 'Processing...'
                                          : (isEditing ? 'Save' : 'Create'),
                                    ),
                                    icon: isLoading
                                        ? const MustacheButtonLoader()
                                        : const Icon(Icons.save),
                                    onPressed:
                                        isLoading ? null : _onSaveTemplate,
                                  );
                                },
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ImaginationImage extends StatelessWidget {
  const ImaginationImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Almost done!',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        Text(
          'Just a few more fields and\nyour template will be online!',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: 400,
            child: Transform.scale(
              scale: 1.5,
              child: const ImagineAnimation(),
            ),
          ),
        ),
      ],
    );
  }
}
