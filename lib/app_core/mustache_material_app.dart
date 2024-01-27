import 'package:commom_states/commom_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/app_routes.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:mustachehub/dashboard/presenter/cubit/navigation_possibilities_cubit.dart';

class MustacheMaterialApp extends StatelessWidget {
  const MustacheMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SessionCubit()),
        BlocProvider(create: (context) => NavigationPossibilitiesCubit()),
      ],
      child: Builder(builder: (context) {
        return MaterialApp.router(
          title: 'Mustache Hub',
          // // The Mandy red, dark theme.
          // darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
          // // Use dark or light theme based on system setting.
          // themeMode: ThemeMode.system,
          theme: FlexThemeData.light(
            scheme: FlexScheme.mandyRed,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ).copyWith(
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
          routerConfig: appRouter(context.read<SessionCubit>()),
        );
      }),
    );
  }
}
