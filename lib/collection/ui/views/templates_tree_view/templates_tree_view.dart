import 'package:flutter/material.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/facades/collection_node_facade/collection_node_facade.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/facades/is_logged_in_to_see_collection_facade/is_logged_in_to_see_facade.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/facades/user_collection_facade/user_collection_facade.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/wrappers/set_nodes_when_collection_changes_wrapper.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/wrappers/update_collection_after_deleting_template_wrapper.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';

class TemplatesTreeView extends StatelessWidget {
  const TemplatesTreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collection'),
        // actions: const [Icon(Icons.create_new_folder_rounded)],
      ),
      drawer: context.drawerOrNull,
      body: const IsLoggedInToSeeFacade(
        child: UpdateCollectionAfterDeletingTemplateWrapper(
          child: SetNodesWhenCollectionChangesWrapper(
            child: UserCollectionFacade(child: CollectionNodeFacade()),
          ),
        ),
      ),
    );
  }
}
