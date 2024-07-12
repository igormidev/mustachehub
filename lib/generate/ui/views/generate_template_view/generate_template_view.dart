import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:commom_states/states/user_collections_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:mustachehub/generate/presenter/cubits/selected_template_cubit.dart';
import 'package:mustachehub/generate/ui/views/generate_template_view/facades/edit_icon_only_with_permission_facade/edit_icon_only_with_permission_facade.dart';
import 'package:mustachehub/generate/ui/views/generate_template_view/facades/selected_template_facade/selected_template_facade.dart';
import 'package:mustachehub/generate/ui/views/generate_template_view/generate_template_methods.dart';

class GenerateTemplateView extends StatefulWidget {
  final String? templateUUID;
  const GenerateTemplateView({
    Key? key,
    required this.templateUUID,
  }) : super(key: key);

  @override
  State<GenerateTemplateView> createState() => _GenerateTemplateViewState();
}

class _GenerateTemplateViewState extends State<GenerateTemplateView>
    with GenerateTemplateMethods {
  @override
  void initState() {
    super.initState();
    if (widget.templateUUID != null) {
      final selectedTemplate = context.read<SelectedTemplateCubit>();
      selectedTemplate.unselect();
    }

    final userCollection = context.read<UserCollectionsCubit>();
    final UserCollectionsState state = userCollection.state;
    setCurrentCollection(state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate text'),
        centerTitle: true,
        actions: const [
          EditIconOnlyWithPermissionFacade(),
        ],
      ),
      drawer: context.drawerOrNull,
      body: const SelectedTemplateFacade(),
    );
  }
}
