import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

class FolderNodeFacadeFace extends StatelessWidget {
  final UserCollectionFolder folder;
  const FolderNodeFacadeFace({
    super.key,
    required this.folder,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(folder.name),
      subtitle: const Text('Folder'),
      leading: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(Icons.folder),
      ),
    );
  }
}
