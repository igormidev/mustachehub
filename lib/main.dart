import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/ui/router/mustache_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MustacheMaterialApp();
  }
}
