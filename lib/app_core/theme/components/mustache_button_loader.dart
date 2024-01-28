import 'package:flutter/material.dart';

class MustacheButtonLoader extends StatelessWidget {
  final Color? color;
  const MustacheButtonLoader({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
