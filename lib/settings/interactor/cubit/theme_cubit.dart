import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/settings/interactor/state/theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit()
      : super(ThemeState.normal(
          colorValue: Colors.blueGrey.value,
          brightness: Brightness.light,
        ));

  void selectColor(Color color) {
    final newState = state.copyWith(
      colorValue: color.value,
    );
    emit(newState);
  }

  void selectBrightness(Brightness brightness) {
    final newState = state.copyWith(
      brightness: brightness,
    );
    emit(newState);
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return state.toJson();
  }
}
