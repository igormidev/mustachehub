import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commom_source/commom_source.dart';
import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/account/data/respositories/implementations/account_repository_impl.dart';
import 'package:mustachehub/account/data/respositories/implementations/image_repository_impl.dart';
import 'package:mustachehub/account/data/respositories/interfaces/i_account_repository.dart';
import 'package:mustachehub/account/data/respositories/interfaces/i_image_repository.dart';
import 'package:mustachehub/account/presenter/cubit/change_password_cubit.dart';
import 'package:mustachehub/account/presenter/cubit/email_verification_cubit.dart';
import 'package:mustachehub/account/presenter/cubit/image_selector_cubit.dart';
import 'package:mustachehub/account/presenter/cubit/log_out_cubit.dart';
import 'package:mustachehub/account/ui/pages/account_page/account_page.dart';
import 'package:mustachehub/account/ui/pages/account_page/pages/account_image_select_page/account_image_select_page.dart';
import 'package:mustachehub/auth/data/repositories/implementations/log_in_repository_impl.dart';
import 'package:mustachehub/auth/data/repositories/implementations/pass_recovery_repository_impl.dart';
import 'package:mustachehub/auth/data/repositories/implementations/sign_in_repository_impl.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_log_in_repository.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_pass_recovery_repository.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_sign_in_repository.dart';
import 'package:mustachehub/auth/presenter/cubits/login_form_cubit.dart';
import 'package:mustachehub/auth/presenter/cubits/pass_recovery_form_cubit.dart';
import 'package:mustachehub/auth/presenter/cubits/sign_up_form_cubit.dart';
import 'package:mustachehub/auth/ui/views/auth_desktop_view/auth_desktop_view.dart';
import 'package:mustachehub/auth/ui/views/login_view/login_view.dart';
import 'package:mustachehub/auth/ui/views/pass_recovery_view/pass_recovery_view.dart';
import 'package:mustachehub/auth/ui/views/signin_view/signin_view.dart';
import 'package:mustachehub/collection/presenter/cubits/delete_collection_cubit.dart';
import 'package:mustachehub/collection/ui/views/templates_tree_view/templates_tree_view.dart';
import 'package:mustachehub/create/data/adapters/token_identifier_flatmap_adapter.dart';
import 'package:mustachehub/create/data/adapters/token_identifier_text_display_adapter.dart';
import 'package:mustachehub/create/data/repositories/interfaces/i_package_form_repository.dart';
import 'package:mustachehub/create/presenter/cubits/cleaning_dependencies_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/current_template_type_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/edit_model_info_display_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/editable_template_fetch_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/fields_text_size_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/package_form_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/suggestion_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/tab_controll_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/template_upload_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/ui/create_template_view/create_template_view.dart';
import 'package:mustachehub/dashboard/data/repositories/implementations/user_fetch_repository_impl.dart';
import 'package:mustachehub/dashboard/data/repositories/interfaces/i_user_fetch_repository.dart';
import 'package:mustachehub/dashboard/presenter/cubits/user_fetch_cubit.dart';
import 'package:mustachehub/dashboard/ui/pages/not_found_404_page/not_found_404_page.dart';
import 'package:mustachehub/dashboard/ui/view/dashboard_view/dashboard_view.dart';
import 'package:mustachehub/dashboard/ui/view/spash_view/splash_view.dart';
import 'package:mustachehub/generate/data/adapters/dto_adapter.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/form_stats_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/template_fetch_cubit.dart';
import 'package:mustachehub/generate/ui/views/generate_template_view/generate_template_view.dart';
import 'package:mustachehub/premium/presenter/cubit/billing_configurations_cubit.dart';
import 'package:mustachehub/premium/ui/views/became_premium_view.dart';
import 'package:mustachehub/settings/ui/views/settings_view/settings_view.dart';
import 'package:text_analyser/text_analyser.dart';

class NavigatorService {
  static NavigatorService? _instance;
  // Avoid self instance
  NavigatorService._();
  static NavigatorService get i => _instance ??= NavigatorService._();

  final GlobalKey<NavigatorState> dashboardNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'dashboardNavigator');
  final GlobalKey<NavigatorState> authNovigator =
      GlobalKey<NavigatorState>(debugLabel: 'authNovigator');
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'rootNavigator');

  final GlobalKey<NavigatorState> materialApp = GlobalKey<NavigatorState>(
    debugLabel: 'materialApp',
  );
}

String? redirectTo;
final router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: NavigatorService.i.rootNavigatorKey,
  // refreshListenable: GoRouterRefreshStream(sessionCubit.stream),
  redirect: (context, state) {
    final isInitialScreen = state.matchedLocation.contains('/splash');
    if (isInitialScreen == false && !context.isSessionStateDetermined) {
      redirectTo = '${state.uri}';
      return '/splash';
    }

    return null;
  },
  onException: (context, state, router) {
    router.replace('/not-found');
  },
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) {
        // ?redirectTo=/collection

        // final redirectToLink = state.uri.queryParameters['redirectTo'];
        return MultiBlocProvider(
          providers: [
            RepositoryProvider<IUserFetchRepository>(
              create: (context) => UserFetchRepositoryImpl(
                firebaseAuth: context.read<FirebaseAuth>(),
                firebaseStorage: context.read<FirebaseFirestore>(),
              ),
            ),
            BlocProvider<UserFetchCubit>(
              create: (context) => UserFetchCubit(
                userFetchRepository: context.read<IUserFetchRepository>(),
              ),
            ),
          ],
          child: SplashScreen(
            redirectToLink: redirectTo,
          ),
        );
      },
    ),
    GoRoute(
      path: '/not-found',
      builder: (context, state) => const Scaffold(
        body: NotFound404Page(),
      ),
    ),
    ShellRoute(
      parentNavigatorKey: NavigatorService.i.rootNavigatorKey,
      navigatorKey: NavigatorService.i.dashboardNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return DashboardView(navigator: child);
      },
      routes: [
        GoRoute(
          path: '/collection',
          parentNavigatorKey: NavigatorService.i.dashboardNavigatorKey,
          builder: (context, state) {
            return MultiBlocProvider(providers: [
              RepositoryProvider<DeleteCollectionCubit>(
                create: (context) => DeleteCollectionCubit(
                  userCollectionRepository:
                      context.read<IUserCollectionRepository>(),
                ),
              ),
            ], child: const TemplatesTreeView());
          },
        ),
        GoRoute(
          path: '/generateText',
          parentNavigatorKey: NavigatorService.i.dashboardNavigatorKey,
          builder: (context, state) {
            final templateId = state.uri.queryParameters['templateId'];
            return MultiBlocProvider(
              providers: [
                /// Generator and test
                RepositoryProvider<DtoAdapter>(
                  create: (context) => DtoAdapter(),
                ),
                BlocProvider<ContentCubit>(
                  create: (context) => ContentCubit(
                    dtoAdapter: context.read<DtoAdapter>(),
                  ),
                ),
                BlocProvider<FormStatsCubit>(
                  create: (context) => FormStatsCubit(),
                ),
                BlocProvider<PayloadCubit>(
                  create: (context) => PayloadCubit(
                    dtoAdapter: context.read<DtoAdapter>(),
                    outputCubit: context.read<ContentCubit>(),
                  ),
                ),
                RepositoryProvider<ITemplateRepository>(
                  create: (context) => TemplateRepositoryImpl(),
                ),
                BlocProvider<TemplateFetchCubit>(
                  create: (context) => TemplateFetchCubit(
                    templateRepository: context.read<ITemplateRepository>(),
                  ),
                ),
              ],
              child: GenerateTemplateView(
                templateUUID: templateId,
              ),
            );
          },
        ),
        GoRoute(
          path: '/createMustache',
          parentNavigatorKey: NavigatorService.i.dashboardNavigatorKey,
          builder: (context, state) {
            final templateId = state.uri.queryParameters['templateId'];

            return MultiBlocProvider(
              providers: [
                // Repositories
                RepositoryProvider<TokenIdentifierFlatMapAdapter>(
                  create: (context) => const TokenIdentifierFlatMapAdapter(),
                ),
                RepositoryProvider<TokenIdentifierTextDisplayAdapter>(
                  create: (context) => TokenIdentifierTextDisplayAdapter(),
                ),
                RepositoryProvider<TextAnalyserBase>(
                  create: (context) => const TextAnalyserBase(),
                ),
                RepositoryProvider<ITemplateRepository>(
                  create: (context) => TemplateRepositoryImpl(),
                ),
                BlocProvider(create: (context) => ContentStringCubit()),
                BlocProvider(
                  create: (context) => CurrentTemplateTypeCubit(),
                ),
                BlocProvider(
                  create: (context) => TemplateUploadCubit(
                    repository: context.read<IPackageFormRepository>(),
                  ),
                ),
                BlocProvider(create: (context) => FieldsTextSizeCubit()),
                BlocProvider(create: (context) => CleaningDependenciesCubit()),
                BlocProvider(create: (context) => EditModelInfoDisplayCubit()),
                BlocProvider(create: (context) => PackageFormCubit()),
                BlocProvider(
                  create: (context) => SuggestionCubit(
                    textAnalyser: context.read<TextAnalyserBase>(),
                  ),
                ),
                BlocProvider(create: (context) => TabControllCubit()),
                BlocProvider<VariablesCubit>(
                  create: (context) => VariablesCubit(
                    tokenIdentifierFlatMapAdapter:
                        context.read<TokenIdentifierFlatMapAdapter>(),
                  ),
                ),

                /// Generator and test
                RepositoryProvider<DtoAdapter>(
                  create: (context) => DtoAdapter(),
                ),
                BlocProvider<ContentCubit>(
                  create: (context) => ContentCubit(
                    dtoAdapter: context.read<DtoAdapter>(),
                  ),
                ),
                BlocProvider<FormStatsCubit>(
                  create: (context) => FormStatsCubit(),
                ),
                BlocProvider<EditableTemplateFetchCubit>(
                  create: (context) => EditableTemplateFetchCubit(
                    templateRepository: context.read<ITemplateRepository>(),
                  ),
                ),
                BlocProvider<PayloadCubit>(
                  create: (context) => PayloadCubit(
                    dtoAdapter: context.read<DtoAdapter>(),
                    outputCubit: context.read<ContentCubit>(),
                  ),
                ),
              ],
              child: CreateTemplateView(
                templateId: templateId,
              ),
            );
          },
        ),
        GoRoute(
          path: '/account',
          parentNavigatorKey: NavigatorService.i.dashboardNavigatorKey,
          redirect: (context, state) {
            final accountInfo = context.read<SessionCubit>().state.mapOrNull(
                  loggedIn: (state) => state.account,
                );
            final userProfile = context.read<SessionCubit>().state.mapOrNull(
                  loggedIn: (state) => state.user,
                );

            if (accountInfo == null || userProfile == null) {
              return '/auth/login';
            } else {
              return null;
            }
          },
          builder: (context, state) {
            final accountInfo = context.read<SessionCubit>().state.mapOrNull(
                  loggedIn: (state) => state.account,
                );
            final userProfile = context.read<SessionCubit>().state.mapOrNull(
                  loggedIn: (state) => state.user,
                );

            if (accountInfo == null || userProfile == null) {
              return const SizedBox();
            }

            return MultiBlocProvider(
              providers: [
                RepositoryProvider<IAccountRepository>(
                  create: (context) => AccountRepositoryImpl(
                    auth: context.read<FirebaseAuth>(),
                  ),
                ),
                BlocProvider<ChangePasswordCubit>(
                  create: (context) => ChangePasswordCubit(
                    accountRepository: context.read<IAccountRepository>(),
                  ),
                ),
                BlocProvider<EmailVerificationCubit>(
                  create: (context) => EmailVerificationCubit(
                    accountRepository: context.read<IAccountRepository>(),
                  ),
                ),
                BlocProvider<LogOutCubit>(
                  create: (context) => LogOutCubit(
                    accountRepository: context.read<IAccountRepository>(),
                  ),
                ),
              ],
              child: AccountPage(
                accountInfo: accountInfo,
                userProfile: userProfile,
              ),
            );
          },
          routes: [
            GoRoute(
              path: 'changeProfileImage',
              builder: (context, state) {
                return MultiBlocProvider(
                  providers: [
                    RepositoryProvider<IImageRepository>(
                      create: (context) => ImageRepositoryImpl(
                        auth: context.read<FirebaseAuth>(),
                        storage: context.read<FirebaseStorage>(),
                      ),
                    ),
                    BlocProvider(
                      create: (context) => ImageSelectorCubit(
                        imageRepository: context.read<IImageRepository>(),
                      ),
                    ),
                  ],
                  child: const AccountImageSelectPage(),
                );
              },
            )
          ],
        ),
        GoRoute(
          path: '/becamePremium',
          parentNavigatorKey: NavigatorService.i.dashboardNavigatorKey,
          builder: (context, state) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<BillingConfigurationsCubit>(
                  create: (context) => BillingConfigurationsCubit(),
                )
              ],
              child: const BecamePremiumView(),
            );
          },
        ),
        GoRoute(
          path: '/settings',
          parentNavigatorKey: NavigatorService.i.dashboardNavigatorKey,
          builder: (context, state) {
            return const SettingsView();
          },
        ),
        ShellRoute(
          parentNavigatorKey: NavigatorService.i.dashboardNavigatorKey,
          navigatorKey: NavigatorService.i.authNovigator,
          builder: (
            BuildContext context,
            GoRouterState state,
            Widget child,
          ) {
            return AuthBlocProvider(
              child: AuthDesktopView(
                navigator: child,
              ),
            );
          },
          routes: [
            GoRoute(
              path: '/auth/login',
              parentNavigatorKey: NavigatorService.i.authNovigator,
              pageBuilder: (context, state) {
                return BottomSheetTransitionPage(
                  key: state.pageKey,
                  child: const LoginView(),
                  context: context,
                );
              },
            ),
            GoRoute(
              path: '/auth/signin',
              parentNavigatorKey: NavigatorService.i.authNovigator,
              pageBuilder: (context, state) {
                return BottomSheetTransitionPage(
                  key: state.pageKey,
                  child: const SignInView(),
                  context: context,
                  offsetBegin: const Offset(0, -1),
                );
              },
            ),
            GoRoute(
              path: '/auth/passrecovery',
              parentNavigatorKey: NavigatorService.i.authNovigator,
              pageBuilder: (context, state) {
                return BottomSheetTransitionPage(
                  key: state.pageKey,
                  child: const PassRecoveryView(),
                  context: context,
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);

class GoRouterRefreshStream<T> extends ChangeNotifier {
  /// Creates a [GoRouterRefreshStream].
  ///
  /// Every time the [stream] receives an event the [GoRouter] will refresh its
  /// current route.
  GoRouterRefreshStream(Stream<T> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<T> _subscription;

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }
}

class VerticalPageRouteTransition extends PageRouteBuilder {
  final Widget child;

  VerticalPageRouteTransition({
    required this.child,
  }) : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
    final curveTween = CurveTween(curve: Curves.easeInOutCubic);
    final offsetAnimation = animation.drive(curveTween).drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }
}

class AuthBlocProvider extends StatelessWidget {
  final Widget child;
  const AuthBlocProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider<ISignInRepository>(
          create: (context) => SignInRepositoryImpl(
            firebaseAuth: context.read<FirebaseAuth>(),
            firebaseStorage: context.read<FirebaseFirestore>(),
          ),
        ),
        RepositoryProvider<ILogInRepository>(
          create: (context) => LogInRepositoryImpl(
            firebaseAuth: context.read<FirebaseAuth>(),
          ),
        ),
        RepositoryProvider<IPassRecoveryRepository>(
          create: (context) => PassRecoveryRepositoryImpl(
            firebaseAuth: context.read<FirebaseAuth>(),
          ),
        ),
        BlocProvider<LoginFormCubit>(
          create: (context) => LoginFormCubit(
            loginRepository: context.read<ILogInRepository>(),
          ),
        ),
        BlocProvider<PassRecoveryFormCubit>(
          create: (context) => PassRecoveryFormCubit(
            passRecoveryRepository: context.read<IPassRecoveryRepository>(),
          ),
        ),
        BlocProvider<SignUpFormCubit>(
          create: (context) => SignUpFormCubit(
            signInRepository: context.read<ISignInRepository>(),
          ),
        ),
      ],
      child: child,
    );
  }
}

class BottomSheetTransitionPage extends CustomTransitionPage<void> {
  BottomSheetTransitionPage({
    required this.context,
    required super.key,
    required super.child,
    this.offsetBegin,
  }) : super(transitionsBuilder: (_, __, ___, ____) {
          throw UnimplementedError();
        });
  final BuildContext context;
  final Offset? offsetBegin;

  @override
  Widget Function(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) get transitionsBuilder => (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: offsetBegin ?? const Offset(0, 1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      };
}
