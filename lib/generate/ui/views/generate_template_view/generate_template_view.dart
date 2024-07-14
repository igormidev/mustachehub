import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:mustachehub/generate/ui/views/generate_template_view/facades/edit_icon_only_with_permission_facade/edit_icon_only_with_permission_facade.dart';
import 'package:mustachehub/generate/ui/views/generate_template_view/facades/selected_template_facade/selected_template_facade.dart';
import 'package:mustachehub/generate/ui/wrappers/load_initial_template_wrapper/load_initial_template_wrapper.dart';

class GenerateTemplateView extends StatefulWidget {
  final String? templateUUID;
  const GenerateTemplateView({
    Key? key,
    required this.templateUUID,
  }) : super(key: key);

  @override
  State<GenerateTemplateView> createState() => _GenerateTemplateViewState();
}

class _GenerateTemplateViewState extends State<GenerateTemplateView> {
  @override
  Widget build(BuildContext context) {
    return LoadInitialTemplateWrapper(
      templateUUID: widget.templateUUID,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Generate text'),
          centerTitle: true,
          actions: const [
            EditIconOnlyWithPermissionFacade(),
          ],
        ),
        drawer: context.drawerOrNull,
        body: const SelectedTemplateFacade(),
      ),
    );
  }
}
