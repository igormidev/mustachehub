import 'package:flutter/material.dart';

class ContentTextDisplay extends StatelessWidget {
  final List<InlineSpan> spans;
  const ContentTextDisplay({
    super.key,
    required this.spans,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(TextSpan(children: spans));
  }
}
