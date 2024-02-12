import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/generate/data/adapters/dto_adapter.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/form_stats_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';

class GenerateDependenciesProvider extends StatelessWidget {
  final Widget child;
  const GenerateDependenciesProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider.value(
          value: context.read<DtoAdapter>(),
        ),
        BlocProvider.value(
          value: context.read<ContentCubit>(),
        ),
        BlocProvider.value(
          value: context.read<VariablesCubit>(),
        ),
        BlocProvider.value(
          value: context.read<FormStatsCubit>(),
        ),
        BlocProvider.value(
          value: context.read<PayloadCubit>(),
        ),
      ],
      child: child,
    );
  }
}
