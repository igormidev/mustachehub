import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';

class GenerateTemplateView extends StatelessWidget {
  const GenerateTemplateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate text'),
      ),
      drawer: context.drawerOrNull,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: const Text(''),
        ),
      ),
    );
  }
}
