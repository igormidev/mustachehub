part of 'dashboard_view.dart';

mixin DashboardViewMethods on State<DashboardView> {
  @override
  void initState() {
    super.initState();
    GoRouter.of(context)
        .routeInformationProvider
        .addListener(_dashbaordNavigationUpdater);
  }

  void _dashbaordNavigationUpdater() {
    final currentUri = Router.of(context).routeInformationProvider?.value.uri;
    if (currentUri == null) return;
    final dashboard =
        EDashboardNavigationPossibilities.fromString(currentUri.path);
    if (dashboard != null) {
      context
          .read<NavigationPossibilitiesCubit>()
          .setDashboardEnum(context, dashboard);
    }
  }

  @override
  void dispose() {
    super.dispose();
    GoRouter.of(context)
        .routeInformationProvider
        .removeListener(_dashbaordNavigationUpdater);
  }
}
