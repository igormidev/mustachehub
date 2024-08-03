import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:flutter/material.dart';

// sudo chown -R $USER /opt/homebrew/Caskroom/flutter/3.22.3/flutter
// sudo chown -R $USER:$USER /opt/homebrew/Caskroom/flutter/3.22.3/flutter
class CustomHeader extends StatelessWidget {
  final String headerTitle;
  final Color? color;
  final String? headerSubtitle;
  final Widget? subtitleWidget;

  final String? moreTooltip;
  final String? deleteTooltip;
  final String? clearTooltip;

  final void Function()? moreOnPressed;
  final void Function()? subtractOnPressed;
  final void Function()? addOnPressed;
  final void Function()? deleteOnPressed;
  final void Function()? clearOnPressed;

  final List<CustomActionHeader?>? actions;
  final List<Widget>? children;
  final List<PopupMenuItem<void>> moreOptions;

  const CustomHeader({
    super.key,
    required this.headerTitle,
    this.color,
    this.headerSubtitle,
    this.subtitleWidget,

    // On pressed tooltip message
    this.moreTooltip,
    this.deleteTooltip,
    this.clearTooltip,

    // On pressed functions
    this.moreOnPressed,
    this.subtractOnPressed,
    this.addOnPressed,
    this.deleteOnPressed,
    this.clearOnPressed,
    this.actions,
    this.children,
    this.moreOptions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  headerTitle,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: color,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            if (actions != null) ...actions!.removeNull.map((e) => e),
            if (children != null) ...children!,
            if (moreOnPressed != null)
              IconButton(
                tooltip: moreTooltip ?? 'More options',
                onPressed: moreOnPressed,
                icon: const Icon(Icons.more_vert),
              ),
            if (subtractOnPressed != null)
              IconButton(
                tooltip: 'Decrease text font size',
                onPressed: subtractOnPressed,
                icon: const Icon(Icons.remove),
              ),
            if (addOnPressed != null)
              IconButton(
                tooltip: 'Increase text font size',
                onPressed: addOnPressed,
                icon: const Icon(Icons.add),
              ),
            if (deleteOnPressed != null)
              IconButton(
                onPressed: deleteOnPressed,
                icon: const Icon(Icons.delete),
              ),
            if (clearOnPressed != null)
              IconButton(
                onPressed: clearOnPressed,
                icon: const Icon(Icons.clear),
              ),
            if (moreOptions.isNotEmpty)
              PopupMenuButton(
                tooltip: 'More options',
                itemBuilder: (context) => moreOptions,
              ),
          ],
        ),
        if (subtitleWidget != null) subtitleWidget!,
        if (headerSubtitle != null)
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Text(
              headerSubtitle ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
      ],
    );
  }
}

class CustomActionHeader extends StatelessWidget {
  final IconData iconData;
  final String tooltip;
  final void Function() onPressed;

  const CustomActionHeader({
    required this.iconData,
    required this.tooltip,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: tooltip,
      onPressed: onPressed,
      icon: Icon(iconData),
    );
  }
}
