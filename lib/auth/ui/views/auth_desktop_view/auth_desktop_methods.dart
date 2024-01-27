part of 'auth_desktop_view.dart';

mixin AuthDesktopMethods on State<AuthDesktopView> {
  late final PageController _pageController;

  void _authIconNavigationUpdater() {
    final currentUri = Router.of(context).routeInformationProvider?.value.uri;
    if (currentUri == null) return;
    if (currentUri.path.contains('/auth/signin')) {
      _pageController.animateToPage(
        0,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    } else if (currentUri.path.contains('/auth/login')) {
      _pageController.animateToPage(
        1,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    } else if (currentUri.path.contains('/auth/passrecovery')) {
      _pageController.animateToPage(
        2,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
    GoRouter.of(context)
        .routeInformationProvider
        .addListener(_authIconNavigationUpdater);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    GoRouter.of(context)
        .routeInformationProvider
        .removeListener(_authIconNavigationUpdater);
  }
}
