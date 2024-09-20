import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_methods.dart';
import 'package:text_analyser/text_analyser.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PipeAutocompleteTileFacade extends StatefulWidget {
  final ChoosableVariableImplementations option;
  final int index;
  final FocusNode tileFocusNode;
  final void Function() onSelectCallback;
  const PipeAutocompleteTileFacade({
    super.key,
    required this.option,
    required this.index,
    required this.tileFocusNode,
    required this.onSelectCallback,
  });

  @override
  State<PipeAutocompleteTileFacade> createState() =>
      _PipeAutocompleteTileFacadeState();
}

class _PipeAutocompleteTileFacadeState
    extends State<PipeAutocompleteTileFacade> {
  bool isFocused = false;

  @override
  void initState() {
    super.initState();
    // widget.tileFocusNode.addListener(_setIsFocus);
  }

  @override
  void dispose() {
    // widget.tileFocusNode.addListener(_setIsFocus);
    super.dispose();
  }

  void _setIsFocus() {
    print('isFocused: ${widget.tileFocusNode.hasFocus}');
    setState(() {
      isFocused = widget.tileFocusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return ListTile(
    //   onTap: widget.onSelectCallback,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   autofocus: false,
    //   dense: true,
    //   focusNode: widget.tileFocusNode,
    //   title: Text(choosableVariableImplementation(widget.option)),
    //   minLeadingWidth: 4,
    //   leading: Container(
    //     // height: 40,
    //     width: 4,
    //     color: isFocused ? Colors.green : Colors.amber,
    //   ),
    // );

    final hardColor = switch (widget.option.declarationType) {
      DeclarationType.scope => Theme.of(context).colorScheme.primary,
      DeclarationType.invertedScope => Theme.of(context).colorScheme.tertiary,
      DeclarationType.literal => Theme.of(context).colorScheme.onSurfaceVariant,
    };

    final style = Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Theme.of(context).colorScheme.surface,
        );

    return Tooltip(
      richMessage: TextSpan(
        children: [
          widget.option.map(
            text: (ChoosableVariableImplementationText value) => TextSpan(
              text: 'Display text of the variable',
              style: style,
            ),
            choice: (ChoosableVariableImplementationChoice value) =>
                value.choiceImplementation.map(
              textValue: (_) => TextSpan(
                text: 'Display selected choice name',
                style: style,
              ),
              normalValue: (_) => TextSpan(
                children: [
                  const TextSpan(
                    text: 'Display content in scope when choice ',
                  ),
                  TextSpan(
                    text: 'is',
                    style: style?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' ${value.variableName}',
                  ),
                ],
                style: style,
              ),
              invertedValue: (_) => TextSpan(
                children: [
                  const TextSpan(
                    text: 'Display content in scope when choice is ',
                  ),
                  TextSpan(
                    text: 'not',
                    style: style?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' ${value.variableName}',
                  ),
                ],
                style: style,
              ),
            ),
            boolean: (ChoosableVariableImplementationBoolean value) =>
                value.booleanImplementation.map(
              normalValue: (_) => TextSpan(
                children: [
                  const TextSpan(
                    text: 'Display content in scope when conditional ',
                  ),
                  TextSpan(
                    text: 'is',
                    style: style?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' ${value.variableName}',
                  ),
                ],
                style: style,
              ),
              invertedValue: (_) => TextSpan(
                children: [
                  const TextSpan(
                    text: 'Display content in scope when boolean is ',
                  ),
                  TextSpan(
                    text: 'not',
                    style: style?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' ${value.variableName}',
                  ),
                ],
                style: style,
              ),
            ),
            model: (ChoosableVariableImplementationModel value) =>
                value.modelImplementation.map(
              normalValue: (_) => TextSpan(
                children: [
                  const TextSpan(
                    text: 'Display content logic in scope ',
                  ),
                  TextSpan(
                    text: 'for each',
                    style: style?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' ${value.variableName} item',
                  ),
                ],
                style: style,
              ),
              invertedValue: (_) => TextSpan(
                children: [
                  const TextSpan(
                    text: 'Display text in scope when ',
                  ),
                  TextSpan(
                    text: 'no item is created',
                    style: style?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: ' by the template user',
                  ),
                ],
                style: style,
              ),
            ),
          ),
        ],
      ),
      child: MouseRegion(
        onEnter: (PointerEnterEvent event) => _onHoverChanged(enabled: true),
        onExit: (PointerExitEvent event) => _onHoverChanged(enabled: false),
        child: Focus(
          focusNode: widget.tileFocusNode,
          onFocusChange: (value) {
            setState(() {
              isFocused = value;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.red,
              // color: isFocused ? Colors.red : null,
              color: isFocused
                  ? Theme.of(context).colorScheme.surfaceContainerHighest
                  : _isHovered
                      ? Theme.of(context).colorScheme.surfaceContainerHigh
                      : null,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: widget.onSelectCallback,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 8),
                  switch (widget.option.declarationType) {
                    DeclarationType.scope => Icon(
                        Symbols.tag,
                        color: hardColor,
                        // color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    DeclarationType.invertedScope => Icon(
                        Icons.keyboard_arrow_up_rounded,
                        // Icons.adjust_rounded,
                        color: hardColor,
                        // color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    DeclarationType.literal => Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Icon(
                          Icons.circle,
                          color: hardColor,
                          size: 12,
                          // color: Theme.of(context)
                          //     .colorScheme
                          //     .surfaceContainerLowest,
                        ),
                      ),
                  },
                  const SizedBox(width: 4),
                  Text(
                    widget.option.map(
                      boolean: (value) => value.booleanImplementation.map(
                        normalValue: (impl) {
                          return value.variableName.replaceAll('.', '\n');
                        },
                        invertedValue: (impl) {
                          return value.variableName.replaceAll('.', '\n');
                        },
                      ),
                      choice: (value) => value.choiceImplementation.map(
                        textValue: (impl) => '${value.variableName}\ntext',
                        normalValue: (impl) {
                          return value.variableName.replaceAll('.', '\n');
                        },
                        invertedValue: (impl) {
                          return value.variableName.replaceAll('.', '\n');
                        },
                      ),
                      model: (value) => value.modelImplementation.map(
                        normalValue: (impl) {
                          return value.variableName.replaceAll('.', '\n');
                        },
                        invertedValue: (impl) {
                          return value.variableName.replaceAll('.', '\n');
                        },
                      ),
                      text: (value) => value.variableName,
                    ),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: hardColor,
                        height: 0.9),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isHovered = false;
  void _onHoverChanged({required bool enabled}) {
    setState(() {
      _isHovered = enabled;
    });
  }
}
