import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/presenter/states/current_navigation_state.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';
import 'package:mustachehub/dashboard/presenter/router/mustache_router_delegate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Durations.extralong1, () {
      final sessionState = context.read<SessionCubit>();
      sessionState.setSessionState(SessionState.guest());
      final router =
          (Router.of(context).routerDelegate as MustacheRouterDelegate);
      router.selectNavigation(NavigationPossibilitiesState.loggedOut(
          selectedPossibility: const CollectionCurrentNavigationState()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SizedBox(
            height: 200,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset('assets/visual_identity/logo.PNG'),
            ),
          ),
        ),
      ),
    );
  }
}
