import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/package_form_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';

class SaveTemplateBottomSheet extends StatefulWidget {
  final ContentStringCubit contentCubit;
  final VariablesCubit variablesCubit;
  final PackageFormCubit packageFormCubit;
  final bool isEditingTemplate;
  const SaveTemplateBottomSheet({
    super.key,
    required this.contentCubit,
    required this.variablesCubit,
    required this.isEditingTemplate,
    required this.packageFormCubit,
  });

  @override
  State<SaveTemplateBottomSheet> createState() =>
      _SaveTemplateBottomSheetState();
}

class _SaveTemplateBottomSheetState extends State<SaveTemplateBottomSheet>
    with ValidatorsMixins {
  late TextEditingController _nameEC;
  late TextEditingController _descriptionEC;

  final Debouncer _debouncer = Debouncer(timerDuration: 500.ms);

  @override
  void initState() {
    super.initState();
    _nameEC = TextEditingController(text: _getPackageName());
    _descriptionEC = TextEditingController(text: _getPackageDescription());

    _nameEC.addListener(_updateName);
    _descriptionEC.addListener(_updateName);
  }

  @override
  void dispose() {
    super.dispose();
    _nameEC.dispose();
    _descriptionEC.dispose();

    _debouncer.dispose();
    _nameEC.removeListener(_updateName);
    _descriptionEC.removeListener(_updateName);
  }

  String? _getPackageName() {
    return widget.packageFormCubit.state.mapOrNull(
      normal: (_) => _.name,
      error: (s) => s.name,
    );
  }

  String? _getPackageDescription() {
    return widget.packageFormCubit.state.mapOrNull(
      normal: (_) => _.description,
      error: (s) => s.description,
    );
  }

  void _updateName() {
    widget.packageFormCubit.updateNameAndDescription(
      name: _nameEC.text,
      description: _descriptionEC.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          widget.isEditingTemplate ? 'Save template' : 'Create template',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          widget.isEditingTemplate
              ? 'After saving this new version the previous version of the template will no longer more exist. '
                  'Anyone accessing your template will now see the latest version. '
                  'Currently there is no backup system in mustache hub, so this will be a destructive '
                  'action to your last version of the template and this action can not be redone. '
              : 'What does it mean to create a template? '
                  'Well, it will be availible for you in your collection. '
                  'Also, it will be availible for anyone with the link to visualize it (but only you will have the capability of editing it). '
                  'Note: You can delete an created template whenever you want.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        TextFormField(
          controller: _nameEC,
          decoration: const InputDecoration(
            labelText: 'Template name',
            hintText: 'Enter the name of the template',
          ),
          validator: (val) => combineValidators([
            () => isNotEmpty(val),
            () => lenghtHasToBeAtLeast(4, val),
          ]),
        ),
        TextFormField(
          controller: _descriptionEC,
          validator: (val) => combineValidators([
            () => isNotEmpty(val),
            () => lenghtHasToBeAtLeast(20, val),
          ]),
        ),
        Align(
          child: ElevatedButton.icon(
            label: Text(widget.isEditingTemplate ? 'Save' : 'Create'),
            icon: const Icon(Icons.save),
            onPressed: () {
              _debouncer.garanteedExecutionAfterDebounceFinished(() {
                final content = widget.contentCubit.state.currentText;
                final variables = widget.variablesCubit.state;

                if (widget.isEditingTemplate) {
                  widget.packageFormCubit.updatePackage(
                    packageId: packageId,
                    template: template,
                  );
                } else {
                  widget.packageFormCubit.createPackage(
                    template: template,
                  );
                }
              });
            },
          ),
        )
      ],
    );
  }
}
