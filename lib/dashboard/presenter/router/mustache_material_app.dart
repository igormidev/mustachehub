import 'package:commom_states/commom_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/presenter/router/mustache_router_delegate.dart';
import 'mustache_route_information_parser.dart';

class MustacheMaterialApp extends StatelessWidget {
  final MustacheRouterDelegate _delegate = MustacheRouterDelegate();
  final BackButtonDispatcher _backButtonDispatcher = RootBackButtonDispatcher();
  final MustacheRouteInformationParser _informationParser =
      MustacheRouteInformationParser();
  MustacheMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SessionCubit(),
      child: MaterialApp.router(
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
        routeInformationParser: _informationParser,
        backButtonDispatcher: _backButtonDispatcher,
      ),
    );
  }
}
