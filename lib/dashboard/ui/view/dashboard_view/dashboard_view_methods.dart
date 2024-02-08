part of 'dashboard_view.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

bool didPutListener = false;
mixin DashboardViewMethods on State<DashboardView> {
  GlobalKey<ScaffoldState> getScaffoldKey() => scaffoldKey;
  @override
  void initState() {
    super.initState();
    if (mounted || didPutListener == false) {
      GoRouter.of(context)
          .routeInformationProvider
          .addListener(_dashbaordNavigationUpdater);
      didPutListener = true;
    }
  }

  void _dashbaordNavigationUpdater() {
    final context = NavigatorService.i.dashboardNavigatorKey.currentContext;
    if (context == null || context.mounted == false) return;

    final currentUri = Router.of(context).routeInformationProvider?.value.uri;
    if (currentUri == null) return;
    final dashboard =
        EDashboardNavigationPossibilities.fromString(currentUri.path);
    if (dashboard != null) {
      context
          .read<NavigationPossibilitiesCubit>()
          .setDashboardEnum(context, dashboard);
    }

    // if (currentUri.path.startsWith('/splash')) {
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     final scaffoldContext = scaffoldKey.currentContext;
    //     if (scaffoldContext != null) return;
    //     final context =
    //     GoRouter.of(scaffoldContext)
    //         .routeInformationProvider
    //         .removeListener(_dashbaordNavigationUpdater);
    //   });
    // }
  }
}
