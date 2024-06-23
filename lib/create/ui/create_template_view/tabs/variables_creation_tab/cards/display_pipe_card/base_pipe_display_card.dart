import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

class BasePipeDisplayCard<T extends Pipe> extends StatelessWidget {
  final Pipe? pipe;
  final List<Widget> children;
  final void Function() onEdit;
  const BasePipeDisplayCard({
    super.key,
    required this.pipe,
    required this.onEdit,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    if (pipe == null) return SizedBox.fromSize();

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Name: ${pipe!.name}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Tooltip(
                  message: 'Edit',
                  child: InkWell(
                    onTap: onEdit,
                    child: Icon(
                      Icons.edit,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Description: ${pipe!.description}',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
            ),
            ...children,
          ],
        ),
      ),
    );
  }
}
