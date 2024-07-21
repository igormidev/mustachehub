import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'collection_nodes_state.freezed.dart';

@freezed
abstract class CollectionNodesState with _$CollectionNodesState {
  factory CollectionNodesState.empty() = _CollectionNodesStateEmpty;

  factory CollectionNodesState.withData({
    required String uuid,
    required TreeNodeCollection treeNode,
  }) = _CollectionNodesStateWithData;
}

typedef TreeNodeCollection = TreeNode<UserCollection>;
