// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:mustache_hub_core/src/entities/expected_payload.dart';
import 'package:mustache_hub_core/src/entities/package_info.dart';

class Template extends Equatable {
  final String id;
  final PackageInfo info;
  final ExpectedPayload payload;
  const Template({
    required this.id,
    required this.info,
    required this.payload,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, info, payload];
}
