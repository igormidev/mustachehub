import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

mixin CopyToClipboardMixin {
  void copyText(String data, BuildContext context) {
    unawaited(Clipboard.setData(ClipboardData(text: data)));

    if (kIsWeb) {
      final backgroundColor = Theme.of(context).colorScheme.primaryContainer;
      final String hex = ColorToHex(backgroundColor).toHexNumber();
      Fluttertoast.showToast(
        msg: "Copied to clipboard!",
        gravity: ToastGravity.TOP,
        backgroundColor: backgroundColor,
        textColor: Theme.of(context).colorScheme.onPrimaryContainer,
        fontSize: 16,
        webPosition: "left",
        timeInSecForIosWeb: 2,
        webBgColor: "linear-gradient(to right, #$hex, #$hex)",
      );
    } else {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('Copied to clipboard!'),
            duration: Duration(seconds: 1),
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
