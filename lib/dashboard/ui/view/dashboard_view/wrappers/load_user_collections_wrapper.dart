import 'dart:async';

import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadUserCollectionsWrapper extends StatefulWidget {
  final Widget child;
  const LoadUserCollectionsWrapper({
    super.key,
    required this.child,
  });

  @override
  State<LoadUserCollectionsWrapper> createState() =>
      _LoadUserCollectionsWrapperState();
}

class _LoadUserCollectionsWrapperState
    extends State<LoadUserCollectionsWrapper> {
  @override
  void initState() {
    super.initState();
    final userCollection = context.read<UserCollectionsCubit>();
    unawaited(userCollection.loadUserCollections());
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
