import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commom_source/commom_source.dart';
import 'package:commom_states/commom_states.dart';
import 'package:commom_states/cubits/loading_cubit.dart';
import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:commom_states/states/loading_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/app_routes.dart';
import 'package:mustachehub/collection/presenter/cubits/collection_node_cubit.dart';
import 'package:mustachehub/create/data/repositories/implementations/package_form_repository_impl.dart';
import 'package:mustachehub/create/data/repositories/interfaces/i_package_form_repository.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/template_upload_cubit.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/cubits/navigation_possibilities_cubit.dart';
import 'package:mustachehub/dashboard/ui/view/dashboard_view/wrappers/load_user_collections_wrapper.dart';
import 'package:mustachehub/generate/presenter/cubits/selected_template_cubit.dart';
import 'package:mustachehub/settings/interactor/cubit/theme_cubit.dart';
import 'package:mustachehub/settings/interactor/state/theme_state.dart';

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
        RepositoryProvider<FirebaseAuth>(
          create: (context) => FirebaseAuth.instance,
        ),
        RepositoryProvider<FirebaseFirestore>(
          create: (context) => FirebaseFirestore.instance,
        ),
        RepositoryProvider<FirebaseStorage>(
          create: (context) => FirebaseStorage.instance,
        ),
        RepositoryProvider<ITemplateRepository>(
          create: (context) => TemplateRepositoryImpl(),
        ),
        RepositoryProvider<IUserCollectionRepository>(
          create: (context) => UserCollectionRepositoryImpl(
            templateRepository: context.read<ITemplateRepository>(),
          ),
        ),
        RepositoryProvider<IPackageFormRepository>(
          create: (context) => PackageFormRepositoryImpl(
            userTemplatesRepository: context.read<IUserCollectionRepository>(),
          ),
        ),
        BlocProvider<TemplateUploadCubit>(
          create: (context) => TemplateUploadCubit(
            repository: context.read<IPackageFormRepository>(),
          ),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<SelectedTemplateCubit>(
          create: (context) => SelectedTemplateCubit(),
        ),
        BlocProvider<CollectionNodeCubit>(
          create: (context) => CollectionNodeCubit(),
        ),
        BlocProvider<ContentStringCubit>(
          create: (context) => ContentStringCubit(),
        ),
        BlocProvider<SessionCubit>.value(value: sessionCubit),
        BlocProvider<LoadingCubit>(create: (context) => LoadingCubit()),
        BlocProvider<UserCollectionsCubit>(
          create: (context) => UserCollectionsCubit(
            userCollectionRepository: context.read<IUserCollectionRepository>(),
          ),
        ),
        BlocProvider<NavigationPossibilitiesCubit>(
          create: (context) => NavigationPossibilitiesCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          final colorScheme = ColorScheme.fromSeed(
            seedColor: themeState.color,
            brightness: themeState.brightness,
          );
          return LoadUserCollectionsWrapper(
            child: BlocListener<LoadingCubit, LoadingState>(
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
                    dividerColor: Theme.of(context).colorScheme.outlineVariant,
                    // listTileTheme: Theme.of(context).listTileTheme.copyWith(
                    //       tileColor:
                    //           Theme.of(context).colorScheme.primaryContainer,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(8),
                    //       ),
                    //     ),
                    iconTheme: Theme.of(context).iconTheme.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                    inputDecorationTheme: InputDecorationTheme(
                      border: const OutlineInputBorder(
                        // borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      filled: true,
                      fillColor: colorScheme.secondaryContainer.withAlpha(80),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 12),
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
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                    ),
                  ),
                  routerConfig: router,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
