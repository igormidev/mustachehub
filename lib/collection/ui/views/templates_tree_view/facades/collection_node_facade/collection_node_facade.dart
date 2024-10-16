import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/collection/presenter/cubits/collection_node_cubit.dart';
import 'package:mustachehub/collection/presenter/states/collection_nodes_state.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/facades/collection_node_facade/facades_faces/file_node_facade_face.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/facades/collection_node_facade/facades_faces/folder_node_facade_face.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/pages/empty_collection_indicator_page.dart';

class CollectionNodeFacade extends StatelessWidget {
  const CollectionNodeFacade({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectionNodeCubit, CollectionNodesState>(
      builder: (context, state) {
        return state.when(
          empty: () => SizedBox.fromSize(),
          withData: (String uuid, TreeNode<UserCollection> treeNode) {
            if (treeNode.children.isEmpty) {
              return const EmptyCollectionIndicatorPage();
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TreeView.simpleTyped<UserCollection,
                  TreeNode<UserCollection>>(
                key: ValueKey(uuid),
                tree: treeNode,
                showRootNode: false,
                shrinkWrap: true,
                expansionBehavior: ExpansionBehavior.scrollToLastChild,
                indentation: const Indentation(),
                padding: const EdgeInsets.only(bottom: 8),
                expansionIndicatorBuilder: (
                  BuildContext context,
                  ITreeNode node,
                ) {
                  if (node.isRoot) {
                    return PlusMinusIndicator(
                      tree: node,
                      alignment: Alignment.centerLeft,
                      color: Colors.grey[700],
                    );
                  }

                  return ChevronIndicator.rightDown(
                    tree: node,
                    alignment: Alignment.centerLeft,
                    color: Colors.grey[700],
                  );
                },
                builder: (
                  BuildContext context,
                  TreeNode<UserCollection> node,
                ) {
                  return node.data!.map(
                    folder: (folder) => FolderNodeFacadeFace(folder: folder),
                    file: (file) => FileNodeFacadeFace(file: file),
                    root: (_) => SizedBox.fromSize(),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
