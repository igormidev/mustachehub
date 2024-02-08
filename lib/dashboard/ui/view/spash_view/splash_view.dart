import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/presenter/cubits/user_fetch_cubit.dart';
import 'package:mustachehub/dashboard/ui/view/spash_view/wrappers/fetch_user_redirect_wrapper.dart';

part 'splash_view_methods.dart';

class SplashScreen extends StatefulWidget {
  final String targetRoute;
  const SplashScreen({
    super.key,
    required this.targetRoute,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SplashViewMethods {
  @override
  Widget build(BuildContext context) {
    return FetchUserRedirectWrapper(
      targetRoute: widget.targetRoute,
      child: Scaffold(
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
      ),
    );
  }
}
