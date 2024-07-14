import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/collection/presenter/states/collection_nodes_state.dart';
import 'package:uuid/uuid.dart';

class CollectionNodeCubit extends Cubit<CollectionNodesState> {
  CollectionNodeCubit() : super(CollectionNodesState.empty());

  void setCollectionNodesFromRoot(UserCollectionRoot root) {
    final node = TreeNodeCollection.root(data: root);

    List<TreeNodeCollection> getNodesFromFolder(
      UserCollectionFolder folder,
    ) {
      final nodes = <TreeNodeCollection>[];

      for (var element in folder.children) {
        if (element is UserCollectionFolder) {
          final node = TreeNodeCollection(data: element);
          node.addAll(getNodesFromFolder(element));
          nodes.add(node);
        } else {
          nodes.add(TreeNodeCollection(data: element));
        }
      }

      return nodes;
    }

    node.addAll([
      for (var element in root.children)
        if (element is UserCollectionFolder)
          TreeNodeCollection(data: element)..addAll(getNodesFromFolder(element))
        else
          TreeNodeCollection(data: element),
    ]);

    emit(
      CollectionNodesState.withData(
        treeNode: node,
        uuid: const Uuid().v4(),
      ),
    );
  }
}
