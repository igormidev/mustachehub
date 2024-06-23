import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/generate/data/adapters/dto_adapter.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/form_stats_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';

class GenerateDependenciesProvider extends StatelessWidget {
  final BuildContext contextWithDependencies;
  final Widget child;
  const GenerateDependenciesProvider({
    super.key,
    required this.contextWithDependencies,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider.value(
          value: contextWithDependencies.read<DtoAdapter>(),
        ),
        BlocProvider.value(
          value: contextWithDependencies.read<ContentCubit>(),
        ),
        BlocProvider.value(
          value: contextWithDependencies.read<VariablesCubit>(),
        ),
        BlocProvider.value(
          value: contextWithDependencies.read<FormStatsCubit>(),
        ),
        BlocProvider.value(
          value: contextWithDependencies.read<PayloadCubit>(),
        ),
        BlocProvider.value(
          value: contextWithDependencies.read<ContentStringCubit>(),
        ),
      ],
      child: child,
    );
  }
}
