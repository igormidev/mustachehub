part of 'splash_view.dart';

mixin SplashViewMethods on State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Durations.extralong1, () {
      if (mounted) {
        final fetchUserCubit = context.read<UserFetchCubit>();

        fetchUserCubit.fetchUser();
      }
    });
  }
}
