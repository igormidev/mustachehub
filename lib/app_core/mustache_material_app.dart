import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commom_states/commom_states.dart';
import 'package:commom_states/cubits/loading_cubit.dart';
import 'package:commom_states/states/loading_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/app_routes.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/cubits/navigation_possibilities_cubit.dart';

class MustacheMaterialApp extends StatefulWidget {
  const MustacheMaterialApp({super.key});

  @override
  State<MustacheMaterialApp> createState() => _MustacheMaterialAppState();
}

final SessionCubit sessionCubit = SessionCubit();

class _MustacheMaterialAppState extends State<MustacheMaterialApp> {
  final ValueNotifier<bool> _isClicable = ValueNotifier<bool>(true);

  @override
  void initState() {
    super.initState();
    router.routeInformationProvider.addListener(_dashbaordNavigationUpdater);
  }

  void _dashbaordNavigationUpdater() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = NavigatorService.i.dashboardNavigatorKey.currentContext;
      if (context == null || context.mounted == false) return;

      final currentUri = router.routeInformationProvider.value.uri;

      final dashboard = EDashboardNavigationPossibilities.fromString(
        currentUri.path,
      );

      if (dashboard != null) {
        context
            .read<NavigationPossibilitiesCubit>()
            .setDashboardEnum(context, dashboard);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    router.routeInformationProvider.removeListener(_dashbaordNavigationUpdater);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SessionCubit>.value(value: sessionCubit),
        // BlocProvider<SessionCubit>(create: (context) => SessionCubit()),
        BlocProvider<LoadingCubit>(create: (context) => LoadingCubit()),
        BlocProvider<NavigationPossibilitiesCubit>(
          create: (context) => NavigationPossibilitiesCubit(),
        ),
        RepositoryProvider<FirebaseAuth>(
          create: (context) => FirebaseAuth.instance,
        ),
        RepositoryProvider<FirebaseFirestore>(
          create: (context) => FirebaseFirestore.instance,
        ),
        RepositoryProvider<FirebaseStorage>(
          create: (context) => FirebaseStorage.instance,
        ),
      ],
      child: Builder(builder: (context) {
        final colorScheme = ColorScheme.fromSeed(seedColor: Colors.purple);
        return BlocListener<LoadingCubit, LoadingState>(
          listener: (context, state) {
            state.map(
              processing: (value) {
                _isClicable.value = false;
              },
              done: (value) {
                _isClicable.value = true;
              },
            );
          },
          child: ValueListenableBuilder<bool>(
            valueListenable: _isClicable,
            builder: (context, value, child) {
              return IgnorePointer(
                ignoring: value == false,
                child: child,
              );
            },
            child: MaterialApp.router(
              title: 'Mustache Hub',
              key: NavigatorService.i.materialApp,
              theme: ThemeData(
                colorScheme: colorScheme,
                snackBarTheme: SnackBarThemeData(
                  backgroundColor: colorScheme.secondaryContainer,
                  contentTextStyle: TextStyle(
                    color: colorScheme.onSecondaryContainer,
                  ),
                ),
                inputDecorationTheme: InputDecorationTheme(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  filled: true,
                  fillColor: colorScheme.secondaryContainer,
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
                    textStyle:
                        Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                  ),
                ),
              ),
              routerConfig: router,
            ),
          ),
        );
      }),
    );
  }
}
