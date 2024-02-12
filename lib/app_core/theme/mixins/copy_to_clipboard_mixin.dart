import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';

mixin CopyToClipboardMixin {
  void copyText(String? data, BuildContext context) {
    if (data != null) {
      unawaited(Clipboard.setData(ClipboardData(text: data)));
    }

    final text =
        data == null ? "Copied to clipboard!" : "No output text to be copied";

    if (kIsWeb) {
      final backgroundColor = data == null
          ? Theme.of(context).colorScheme.primaryContainer
          : Theme.of(context).colorScheme.errorContainer;

      final String hex = ColorToHex(backgroundColor).toHexNumber();

      Fluttertoast.showToast(
        msg: text,
        gravity: ToastGravity.TOP,
        backgroundColor: backgroundColor,
        textColor: data == null
            ? Theme.of(context).colorScheme.onPrimaryContainer
            : Theme.of(context).colorScheme.onErrorContainer,
        fontSize: 16,
        webPosition: "left",
        timeInSecForIosWeb: 2,
        webBgColor: "linear-gradient(to right, #$hex, #$hex)",
      );
    } else {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          data == null
              ? SnackBar(
                  content: Text(text),
                  duration: const Duration(seconds: 1),
                )
              : ErrorSnackBar(
                  context: context,
                  text: text,
                  duration: const Duration(seconds: 2),
                ),
        );
    }
  }
}

class ColorToHex extends Color {
  ///convert material colors to hexcolor
  static int _convertColorTHex(Color color) {
    var hex = '${color.value}';
    return int.parse(
      hex,
    );
  }

  String toHexNumber() {
    return toString().substring(10, 16);
  }

  ColorToHex(final Color color) : super(_convertColorTHex(color));
}
