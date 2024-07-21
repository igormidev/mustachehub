part of 'splash_view.dart';

mixin SplashViewMethods on State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Durations.extralong1, () async {
      if (mounted) {
        final fetchUserCubit = context.read<UserFetchCubit>();
        await fetchUserCubit.fetchUser();
      }
    });
  }
}
