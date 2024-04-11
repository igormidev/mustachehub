import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_info.freezed.dart';
part 'package_info.g.dart';

@freezed
abstract class PackageInfo with _$PackageInfo {
  factory PackageInfo({
    required String name,
    required String description,
  }) = _PackageInfo;

  factory PackageInfo.fromJson(Map<String, dynamic> json) =>
      _$PackageInfoFromJson(json);
}
