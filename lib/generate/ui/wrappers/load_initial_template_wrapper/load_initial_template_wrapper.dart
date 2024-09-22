import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/generate/presenter/cubits/template_fetch_cubit.dart';
import 'package:mustachehub/generate/presenter/states/template_fetch_state.dart';
import 'package:mustachehub/generate/ui/facades/loading_initial_template_facade/loading_initial_template_facade.dart';
import 'package:mustachehub/generate/ui/wrappers/load_initial_template_wrapper/load_initial_template_methods.dart';

class LoadInitialTemplateWrapper extends StatefulWidget {
  final String? templateUUID;
  final Widget child;
  const LoadInitialTemplateWrapper({
    super.key,
    this.templateUUID,
    required this.child,
  });

  @override
  State<LoadInitialTemplateWrapper> createState() =>
      _LoadInitialTemplateWrapperState();
}

class _LoadInitialTemplateWrapperState extends State<LoadInitialTemplateWrapper>
    with LoadInitialTemplateMethods {
  @override
  Widget build(BuildContext context) {
    return BlocListener<TemplateFetchCubit, TemplateFetchState>(
      listener: (context, state) {
        state.whenOrNull(successFetch: setTemplate);
      },
      child: LoadingInitialTemplateFacade(
        child: widget.child,
      ),
    );
  }
}
