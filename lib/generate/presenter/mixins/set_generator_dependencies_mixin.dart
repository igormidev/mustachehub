import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/packages_info_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';

mixin SetGeneratorDependenciesMixin {
  Future<void> setDependencies({
    required BuildContext context,
    required ContentInput output,
    required PackageInfo? packageInfo,
    required List<TextPipe> textPipes,
    required List<BooleanPipe> booleanPipes,
    required List<ChoicePipe> choicePipes,
    required List<ModelPipe> modelPipes,
  }) async {
    final packageInfoCubit = context.read<PackagesInfoCubit>();
    final payloadCubit = context.read<PayloadCubit>();
    final outputCubit = context.read<ContentCubit>();
    await payloadCubit.updateContent(
      output: output,
      expectedPayload: ExpectedPayload(
        textPipes: textPipes,
        booleanPipes: booleanPipes,
        choicePipes: choicePipes,
        modelPipes: modelPipes,
      ),
      expectedPayloadDto: null,
    );
    if (payloadCubit.state is InitialPayloadState) {
      outputCubit.setPendency(output);
    }
    if (packageInfo != null) {
      packageInfoCubit.setPackageInfo(packageInfo);
    } else {
      packageInfoCubit.clearPackageInfo();
    }
  }
}
