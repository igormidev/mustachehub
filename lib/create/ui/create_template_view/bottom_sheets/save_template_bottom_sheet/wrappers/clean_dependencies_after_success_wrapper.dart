// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/create/presenter/cubits/cleaning_dependencies_cubit.dart';
import 'package:mustachehub/create/presenter/mixins/clear_all_data_mixin.dart';
import 'package:mustachehub/create/presenter/states/cleaning_dependencies_state.dart';

class CleanDependenciesAfterSuccessWrapper extends StatelessWidget
    with ClearAllDataMixin {
  final Widget child;
  const CleanDependenciesAfterSuccessWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CleaningDependenciesCubit, CleaningDependenciesState>(
      listener: (context, state) async {
        await state.mapOrNull(
          cleaningDependencies: (value) async {
            Navigator.of(context).pop();
            clearAllDependencies(context);
            context.read<CleaningDependenciesCubit>().setEndClean();
          },
          endClean: (value) {
            context.go('/collection');
          },
        );
      },
      child: child,
    );
  }
}
