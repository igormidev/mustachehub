import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/extensions/default_state_extension.dart';
import 'package:mustachehub/create/data/dtos/package_form_data.dart';
import 'package:mustachehub/create/presenter/cubits/current_template_type_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/package_form_cubit.dart';
import 'package:mustachehub/create/presenter/states/current_template_type_state.dart';

class SetInitialStateWrapper extends StatefulWidget {
  final String? packageId;
  final Widget child;
  const SetInitialStateWrapper({
    super.key,
    required this.child,
    this.packageId,
  });

  @override
  State<SetInitialStateWrapper> createState() => _SetInitialStateWrapperState();
}

class _SetInitialStateWrapperState extends State<SetInitialStateWrapper> {
  @override
  void initState() {
    super.initState();
    final state = context.read<CurrentTemplateTypeCubit>().state;
    updateFormCubit(state);
  }

  void updateFormCubit(CurrentTemplateTypeState state) {
    final packageForm = context.read<PackageFormCubit>();
    if (!packageForm.state.isStateLoading) {
      return;
    }
    final Template? template = state.mapOrNull(
      withExistingTemplate: (value) => value.template,
    );

    if (template == null) {
      packageForm.setInitial(
        PackageFormData.creatingFromZero(title: '', description: ''),
      );
    } else {
      packageForm.setInitial(
        PackageFormData.editingMyPackage(
          title: template.info.name,
          description: template.info.name,
          previousInfoPackage: template.info,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CurrentTemplateTypeCubit, CurrentTemplateTypeState>(
      listener: (context, state) {
        updateFormCubit(state);
      },
      child: widget.child,
    );
  }
}
