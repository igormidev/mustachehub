import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/app_core/theme/mixins/copy_to_clipboard_mixin.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/states/content_state.dart';

mixin CopyAllOutputHeaderMethods on CopyToClipboardMixin {
  void copyAllOutputToClipboard(BuildContext context) {
    final outputCubit = context.read<ContentCubit>();
    final contents = outputCubit.state.content?.contents;

    if (contents == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        ErrorSnackBar(context: context, text: 'No template text to be copied'),
      );
      return;
    }

    copyText(collapseAllOutputTextIntoASingle(contents), context);

    if (kReleaseMode) {
      FirebaseAnalytics.instance.logEvent(name: 'output_copied');
    }
  }

  String collapseAllOutputTextIntoASingle(
    List<ContentTextSectionInput> output,
  ) {
    String outputText = '';
    for (final e in output) {
      if (e.willBreakLine) {
        outputText += '\n';
      }

      outputText += e.content;
    }
    return outputText;
  }
}
