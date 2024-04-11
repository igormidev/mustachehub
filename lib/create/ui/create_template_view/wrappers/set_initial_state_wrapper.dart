import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/cubits/current_template_type_cubit.dart';
import 'package:mustachehub/create/presenter/state/current_template_type_state.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/get_initial_package_if_need.dart';

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

class _SetInitialStateWrapperState extends State<SetInitialStateWrapper>
    with GetInitialPackageIfNeed {
  @override
  void initState() {
    super.initState();
    getPackageDataIfIdIsNotNull(packageId: widget.packageId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CurrentTemplateTypeCubit, CurrentTemplateTypeState,
        bool>(
      selector: (state) => state.maybeWhen(
        orElse: () => false,
        loading: () => true,
      ),
      builder: (context, isLoading) {
        if (isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return widget.child;
      },
    );
  }
}
