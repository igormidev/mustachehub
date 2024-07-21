import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:commom_states/states/user_collections_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/collection/presenter/cubits/collection_node_cubit.dart';

class SetNodesWhenCollectionChangesWrapper extends StatefulWidget {
  final Widget child;
  const SetNodesWhenCollectionChangesWrapper({
    super.key,
    required this.child,
  });

  @override
  State<SetNodesWhenCollectionChangesWrapper> createState() =>
      _SetNodesWhenCollectionChangesWrapperState();
}

class _SetNodesWhenCollectionChangesWrapperState
    extends State<SetNodesWhenCollectionChangesWrapper> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userCollectionState = context.read<UserCollectionsCubit>().state;
      setNodes(userCollectionState);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCollectionsCubit, UserCollectionsState>(
      listener: (context, state) {
        setNodes(state);
      },
      child: widget.child,
    );
  }

  void setNodes(UserCollectionsState state) {
    final UserCollectionRoot? collection = state.mapOrNull(
      processing: (value) => value.userCollections,
      withData: (value) => value.userCollections,
    );
    if (collection != null) {
      context
          .read<CollectionNodeCubit>()
          .setCollectionNodesFromRoot(collection);
    }
  }
}
