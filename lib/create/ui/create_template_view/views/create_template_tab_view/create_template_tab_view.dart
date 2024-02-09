import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/cubits/tab_controll_cubit.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_section.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/variables_creation_tab.dart';

class CreateTemplateTabView extends StatefulWidget {
  const CreateTemplateTabView({super.key});

  @override
  State<CreateTemplateTabView> createState() => _CreateTemplateTabViewState();
}

class _CreateTemplateTabViewState extends State<CreateTemplateTabView>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TabControllCubit, int>(
      bloc: context.read<TabControllCubit>(),
      listener: (context, state) {
        tabController.animateTo(state);
      },
      child: TabBarView(
        controller: tabController,
        children: [
          VariablesCreationTab(),
          const TextContentSection(),
          Container(color: Colors.green[200]),
        ],
      ),
    );
  }
}
