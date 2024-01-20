import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/ui/router/mustache_router_delegate.dart';
import 'mustache_route_information_parser.dart';

class MustacheMaterialApp extends StatelessWidget {
  final MustacheRouterDelegate _delegate = MustacheRouterDelegate();
  final BackButtonDispatcher _backButtonDispatcher = RootBackButtonDispatcher();
  MustacheMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Mustache Hub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.secondaryContainer,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            minimumSize: const Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
      routerDelegate: _delegate,
      routeInformationParser: MustacheRouteInformationParser(),
      backButtonDispatcher: _backButtonDispatcher,
    );
  }
}
