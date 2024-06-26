import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';

class PipeCreationHeader extends StatelessWidget {
  final String headerTitle;
  final String subtitleSubtitle;
  const PipeCreationHeader({
    super.key,
    required this.headerTitle,
    required this.subtitleSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: CustomHeader(
          headerTitle: headerTitle,
          headerSubtitle: subtitleSubtitle,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
