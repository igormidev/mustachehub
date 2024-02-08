part of '../overlay_controller.dart';

class _GenericMessageDialog extends StatelessWidget {
  const _GenericMessageDialog({
    required this.title,
    this.description,
    this.actions = const [],
    this.icon,
  });
  final String title;
  final String? description;
  final Widget? icon;
  final List<DialogAction> actions;

  @override
  Widget build(BuildContext context) {
    if (DevicePlatform.isIOS || DevicePlatform.isMacOS) {
      return CupertinoAlertDialog(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) icon!,
            Text(title),
          ],
        ),
        content: description != null ? Text(description!) : null,
        actions: [
          if (actions.isEmpty)
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                InScreenOverlay.instance().hide();
              },
              child: const Text(
                'Close',
              ),
            ),
          ...actions.map((action) {
            return CupertinoDialogAction(
              onPressed: () {
                InScreenOverlay.instance().hide();
                action.onPressed?.call();
              },
              child: Text(
                action.text,
              ),
            );
          }),
        ],
      );
    }

    return AlertDialog(
      title: Text(title),
      content: description != null ? Text(description!) : null,
      actions: [
        if (actions.isEmpty)
          TextButton(
            onPressed: () {
              InScreenOverlay.instance().hide();
            },
            child: const Text('Close'),
          ),
        ...actions.map((action) {
          return TextButton(
            onPressed: () {
              InScreenOverlay.instance().hide();
              action.onPressed?.call();
            },
            child: Text(action.text),
          );
        }),
      ],
    );
  }
}


// Header - Name, Icon edit.
// 