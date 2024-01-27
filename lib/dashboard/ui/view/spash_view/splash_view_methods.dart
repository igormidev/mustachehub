part of 'splash_view.dart';

mixin SplashViewMethods on State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Durations.extralong1, () {
      final sessionState = context.read<SessionCubit>();
      final dashboardCubit = context.read<NavigationPossibilitiesCubit>();
      Future.delayed(const Duration(seconds: 1), () {
        dashboardCubit.setNavigationPossibilitiesState(
          NavigationPossibilitiesState.loggedOut(
            selectedPossibility: EDashboardNavigationPossibilities.collection,
          ),
        );
        sessionState.setSessionState(SessionState.guest());
      });
    });
  }
}
