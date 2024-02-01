import 'package:commom_states/cubits/loading_cubit.dart';
import 'package:flutter/material.dart' show BuildContext;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'loading_state.freezed.dart';

@freezed
abstract class LoadingState with _$LoadingState {
  /// Processing of a request
  factory LoadingState.processing() = _Processing;

  factory LoadingState.done() = _Done;
}

extension LoadingStateBuildContextExtension on BuildContext {
  void setGlobalLoading() {
    if (isLoading) return;
    read<LoadingCubit>().setToLoading();
  }

  void endGlobalLoading() {
    if (isNotLoading) return;
    read<LoadingCubit>().setToLoadingDone();
  }

  bool get isLoading => read<LoadingCubit>().state.map(
        processing: (_) => true,
        done: (_) => false,
      );

  bool get isNotLoading => !isLoading;
}
