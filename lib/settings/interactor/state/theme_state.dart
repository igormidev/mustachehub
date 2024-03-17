import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';
part 'theme_state.g.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.normal({
    required int colorValue,
    required Brightness brightness,
  }) = _Normal;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);
}

extension ThemeStateExtension on ThemeState {
  Color get color => Color(colorValue);
}
