import 'package:flutter/material.dart';

class DefaultLoadingPage extends StatelessWidget {
  const DefaultLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Loading...',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
