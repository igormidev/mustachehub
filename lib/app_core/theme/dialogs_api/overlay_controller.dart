import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_platform/simple_platform.dart';
part 'overlay_models.dart';
part 'types/loading_dialog.dart';
part 'types/action_dialog.dart';

class InScreenOverlay {
  factory InScreenOverlay.instance() => _shared;
  // Singleton pattern
  InScreenOverlay._sharedInstance();
  static final InScreenOverlay _shared = InScreenOverlay._sharedInstance();

  OverlayScreenController? _controller;

  void show({
    required BuildContext context,
    required OverlayType overlayType,
  }) {
    if (_controller?.update(overlayType) ?? false) {
      return;
    } else {
      _controller = _showOverlay(
        context: context,
        overlayWidgetType: overlayType,
      );
    }
  }

  void hide() {
    _controller?.close();
    _controller = null;
  }

  OverlayScreenController _showOverlay({
    required BuildContext context,
    required OverlayType overlayWidgetType,
  }) {
    final overlayTypeStream = StreamController<OverlayType>()
      ..add(overlayWidgetType);

    final state = Overlay.of(context);

    final overlayEntry = OverlayEntry(
      builder: (context) {
        return Material(
          color: Colors.black.withAlpha(150),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(
                maxHeight: 500,
                minWidth: 180,
              ),
              child: StreamBuilder<OverlayType>(
                stream: overlayTypeStream.stream,
                builder: (context, snapshot) {
                  final overlayType = snapshot.data;
                  if (overlayType == null) return SizedBox.fromSize();

                  return switch (overlayType) {
                    DialogTypeLoading() => _LoadingDialog(overlayType.message),
                    DialogTypeMessageAction() => _GenericMessageDialog(
                        title: overlayType.title,
                        actions: overlayType.actions,
                        description: overlayType.description,
                        icon: overlayType.icon,
                      ),
                  };
                },
              ),
            ),
          ),
        );
      },
    );
    state.insert(overlayEntry);

    return OverlayScreenController(
      close: () {
        overlayTypeStream.close();
        overlayEntry.remove();
        return true;
      },
      update: (overlay) {
        overlayTypeStream.add(overlay);
        return true;
      },
    );
  }
}
