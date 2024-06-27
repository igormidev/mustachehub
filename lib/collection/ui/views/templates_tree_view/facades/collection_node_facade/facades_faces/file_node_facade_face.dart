import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

class FileNodeFacadeFace extends StatelessWidget {
  final UserCollectionFile file;
  const FileNodeFacadeFace({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(file.template.info.name),
      isThreeLine: true,
      subtitle: Text(
          'Updated at: ${file.template.metadata.updatedAt}. ${file.template.info.description}'),
      // subtitle: Text(file.packageInfo.info.description),
      leading: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(Icons.file_copy),
      ),
      trailing: IconButton(icon: const Icon(Icons.delete), onPressed: () {}),
    );
  }
}
