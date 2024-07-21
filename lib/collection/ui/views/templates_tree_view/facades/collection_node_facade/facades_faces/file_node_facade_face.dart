import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/extensions/date_time_formatter.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/widgets/delete_collection_icon_button.dart';

class FileNodeFacadeFace extends StatelessWidget {
  final UserCollectionFile file;
  const FileNodeFacadeFace({
    super.key,
    required this.file,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(file.template.info.name),
      isThreeLine: true,
      onTap: () {
        context.go('/generateText?templateId=${file.template.id}');
      },
      subtitle: Text(
        'Updated at: ${file.template.metadata.updatedAt.namedDisplayDateWithHour}. ${file.template.info.description}',
      ),
      trailing: DeleteCollectionIconButton(
        template: file.template,
      ),
    );
  }
}
