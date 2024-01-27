import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mustachehub/firebase_options.dart';
import 'package:mustachehub/app_core/mustache_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MustacheMaterialApp();
  }
}
