import 'package:flutter/material.dart';
import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/cubit/navigation_possibilities_cubit.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';

part 'splash_view_methods.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SplashViewMethods {
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
