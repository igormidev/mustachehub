import 'package:mustache_hub_core/mustache_hub_core.dart';

class PackageInfoAdapter {
  Map<String, dynamic> toMap(PackageInfo packageInfo) {
    return <String, dynamic>{
      'name': packageInfo.name,
      'description': packageInfo.description,
    };
  }

  PackageInfo fromMap(Map<String, dynamic> map) {
    return PackageInfo(
      name: map['name'] as String,
      description: map['description'] as String,
    );
  }
}
