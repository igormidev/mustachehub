part of 'auth_desktop_view.dart';

mixin AuthDesktopMethods on State<AuthDesktopView> {
  late final PageController _pageController;
  void _authIconNavigationUpdater() {
    final currentUri = Router.of(context).routeInformationProvider?.value.uri;
    if (currentUri == null) return;
    if (_pageController.hasClients == false) return;

    if (currentUri.path.contains('/auth/signin')) {
      _pageController.animateToPage(
        0,
        duration: 600.milliseconds,
        curve: Curves.linear,
      );
    } else if (currentUri.path.contains('/auth/login')) {
      _pageController.animateToPage(
        1,
        duration: 600.milliseconds,
        curve: Curves.linear,
      );
    } else if (currentUri.path.contains('/auth/passrecovery')) {
      _pageController.animateToPage(
        2,
        duration: 700.milliseconds,
        curve: Curves.linear,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
    if (mounted) {
      GoRouter.of(context)
          .routeInformationProvider
          .addListener(_authIconNavigationUpdater);
    }
  }

  @override
  void dispose() {
    if (mounted) {
      _pageController.dispose();
      final context = NavigatorService.dashboardNavigatorKey.currentContext!;
      GoRouter.of(context)
          .routeInformationProvider
          .removeListener(_authIconNavigationUpdater);
    }
    super.dispose();
  }
}
