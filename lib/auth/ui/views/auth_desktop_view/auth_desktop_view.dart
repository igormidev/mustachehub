import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:media_query_core/perfomance/sized_box_apear_delay.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/app_core/app_routes.dart';
import 'package:mustachehub/auth/ui/views/auth_desktop_view/cards/logging_advantages_cards.dart';
import 'package:mustachehub/auth/ui/widgets/login_animation.dart';
import 'package:mustachehub/auth/ui/widgets/pass_recovery_animation.dart';
import 'package:mustachehub/auth/ui/widgets/signin_animation.dart';
import 'package:mustachehub/auth/ui/wrappers/login_success_redirect_wrapper.dart';
import 'package:mustachehub/auth/ui/wrappers/pass_recovery_success_redirect_wrapper.dart';
import 'package:mustachehub/auth/ui/wrappers/signin_success_redirect_wrapper.dart';

part 'auth_desktop_methods.dart';

const items = [
  SignInAnimation(
    width: 400,
    height: 400,
  ),
  LogInAnimation(
    height: 400,
    width: 400,
  ),
  PassRecoveryAnimation(
    width: 400,
    height: 400,
  ),
];

class AuthDesktopView extends StatefulWidget {
  final Widget navigator;

  const AuthDesktopView({
    super.key,
    required this.navigator,
  });

  @override
  State<AuthDesktopView> createState() => _AuthDesktopViewState();
}

class _AuthDesktopViewState extends State<AuthDesktopView>
    with AuthDesktopMethods {
  @override
  Widget build(BuildContext context) {
    return LoginSuccessRedirectWrapper(
      child: PassRecoverySuccessRedirectWrapper(
        child: SigninSuccessRedirectWrapper(
          child: Scaffold(
            body: VisibilityWidthBased.fromMediaQueryScreenWidth(
              minimumWidth: ScreenSize.x1300,
              replacement: widget.navigator,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        width: 400,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Advantages of logging in:',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            ),
                            const SizedBox(height: 16),
                            const LoggingAdvantagesCards(),
                            const SizedBox(height: 16),
                            Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              height: 400,
                              width: 400,
                              child: SizedBoxApearDelay(
                                duration: const Duration(milliseconds: 600),
                                child: PageView(
                                  controller: _pageController,
                                  scrollDirection: Axis.vertical,
                                  children: items,
                                ).animate().scale(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 550),
                    child: widget.navigator,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
