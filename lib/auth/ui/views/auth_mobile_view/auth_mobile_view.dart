import 'package:flutter/material.dart';

class AuthMobileView extends StatelessWidget {
  final bool Function(Route<dynamic> route, dynamic result) onPopPageCallback;
  const AuthMobileView({super.key, required this.onPopPageCallback});

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
