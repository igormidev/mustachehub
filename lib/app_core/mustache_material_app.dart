import 'package:commom_states/commom_states.dart';
import 'package:commom_states/cubits/loading_cubit.dart';
import 'package:commom_states/states/loading_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/app_routes.dart';
import 'package:mustachehub/dashboard/presenter/cubits/navigation_possibilities_cubit.dart';

class MustacheMaterialApp extends StatefulWidget {
  const MustacheMaterialApp({super.key});

  @override
  State<MustacheMaterialApp> createState() => _MustacheMaterialAppState();
}

class _MustacheMaterialAppState extends State<MustacheMaterialApp> {
  final ValueNotifier<bool> _isClicable = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SessionCubit()),
        BlocProvider(create: (context) => LoadingCubit()),
        BlocProvider(create: (context) => NavigationPossibilitiesCubit()),
      ],
      child: Builder(builder: (context) {
        return BlocListener<LoadingCubit, LoadingState>(
          listener: (context, state) {
            state.map(
              processing: (value) {
                _isClicable.value = false;
              },
              done: (value) {
                _isClicable.value = true;
              },
            );
          },
          child: ValueListenableBuilder<bool>(
            valueListenable: _isClicable,
            builder: (context, value, child) {
              return IgnorePointer(
                ignoring: value == false,
                child: child,
              );
            },
            child: MaterialApp.router(
              title: 'Mustache Hub',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
                inputDecorationTheme: InputDecorationTheme(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.secondaryContainer,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                ),
                outlinedButtonTheme: OutlinedButtonThemeData(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                filledButtonTheme: FilledButtonThemeData(
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    textStyle:
                        Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Colors.white,
                            ),
                  ),
                ),
              ),
              routerConfig: appRouter(context.read<SessionCubit>()),
            ),
          ),
        );
      }),
    );
  }
}
