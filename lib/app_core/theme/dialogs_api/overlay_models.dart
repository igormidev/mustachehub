part of 'overlay_controller.dart';

typedef CloseLoadingScreen = bool Function();
typedef UpdateLoadingScreen = bool Function(OverlayType overlay);

@immutable
class OverlayScreenController {
  const OverlayScreenController({
    required this.close,
    required this.update,
  });

  final CloseLoadingScreen close;
  final UpdateLoadingScreen update;
}

sealed class OverlayType {}

class DialogTypeLoading implements OverlayType {
  const DialogTypeLoading({this.message});

  final String? message;
}

class DialogTypeMessageAction implements OverlayType {
  const DialogTypeMessageAction({
    required this.title,
    required this.actions,
    this.description,
    this.icon,
  });

  final String title;
  final String? description;
  final Widget? icon;
  final List<DialogAction> actions;
}

class DialogAction {
  const DialogAction({
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;
}
