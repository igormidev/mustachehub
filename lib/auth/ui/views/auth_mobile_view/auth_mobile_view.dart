import 'package:flutter/material.dart';
import 'package:mustachehub/auth/presenter/router/main/auth_navigation_state.dart';

class AuthMobileView extends StatelessWidget {
  final AuthNavigationState state;
  final bool Function(Route<dynamic> route, dynamic result) onPopPageCallback;
  const AuthMobileView({
    super.key,
    required this.onPopPageCallback,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top'),
      ),
      body: Container(),
    );
  }
}
