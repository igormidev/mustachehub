import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'package_info_state.freezed.dart';
part 'package_info_state.g.dart';

@freezed
abstract class PackageInfoState with _$PackageInfoState {
  factory PackageInfoState({
    required PackageInfo packageInfo,
  }) = _PackageInfoState;
  factory PackageInfoState.fromJson(Map<String, dynamic> json) =>
      _$PackageInfoStateFromJson(json);
}
