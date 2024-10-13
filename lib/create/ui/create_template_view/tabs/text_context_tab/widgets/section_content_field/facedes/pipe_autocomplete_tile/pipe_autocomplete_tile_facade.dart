import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:text_analyser/text_analyser.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PipeAutocompleteTileFacade extends StatefulWidget {
  final StructureFolder option;
  final bool isSelected;
  final void Function() onSelectCallback;
  const PipeAutocompleteTileFacade({
    super.key,
    required this.option,
    required this.isSelected,
    required this.onSelectCallback,
  });

  @override
  State<PipeAutocompleteTileFacade> createState() =>
      _PipeAutocompleteTileFacadeState();
}

class _PipeAutocompleteTileFacadeState
    extends State<PipeAutocompleteTileFacade> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
  }

  @override
  void didUpdateWidget(covariant PipeAutocompleteTileFacade oldWidget) {
    isSelected = widget.isSelected;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // widget.tileFocusNode.addListener(_setIsFocus);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hardColor = Theme.of(context).colorScheme.primary;
    // final hardColor = switch (widget.option.declarationType) {
    //   DeclarationType.scope => Theme.of(context).colorScheme.primary,
    //   DeclarationType.invertedScope => Theme.of(context).colorScheme.tertiary,
    //   DeclarationType.literal => Theme.of(context).colorScheme.onSurfaceVariant,
    // };

    final style = Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        );
    final boldStyle = style?.copyWith(
      color: Theme.of(context).colorScheme.primary,
      fontWeight: FontWeight.bold,
    );
    final superBoldStyle = style?.copyWith(
      color: Theme.of(context).colorScheme.primary,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
    );

    Widget iconTag() => Icon(
          Symbols.tag,
          color: hardColor,
        );
    Widget iconInvertedScope() => Icon(
          Icons.keyboard_arrow_up_rounded,
          // Icons.adjust_rounded,
          color: hardColor,
          // color: Theme.of(context).colorScheme.onTertiary,
        );
    Widget iconLiteral() => Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Icon(
            Icons.circle,
            color: hardColor,
            size: 12,
            // color: Theme.of(context)
            //     .colorScheme
            //     .surfaceContainerLowest,
          ),
        );
    final option = widget.option;
    // final item = switch (option) {
    //   FolderStructure<FoldableSelection, FileSelection>() => option.item,
    //   FileStructureOptions<FoldableSelection, FileSelection>() => option.item,
    // };

    final textSpan = switch (option) {
      FolderStructure<FoldableSelection, FileSelection>() => option.item.map(
          folderText: (value) => [
            TextSpan(
              text: 'All text options',
              style: style,
            ),
          ],
          folderBoolean: (value) => [
            TextSpan(
              text: 'All boolean options',
              style: style,
            ),
          ],
          folderChoice: (value) => [
            TextSpan(
              text: 'All choice options',
              style: style,
            ),
          ],
          folderModel: (value) => [
            TextSpan(
              text: 'All item options',
              style: style,
            ),
          ],
          folderChoiceItems: (value) => [
            TextSpan(
              text: 'All choice variables',
              style: style,
            ),
          ],
          folderItemsModel: (value) => [
            TextSpan(
              text: 'All items variables',
              style: style,
            ),
          ],
        ),
      FileStructureOptions<FoldableSelection, FileSelection>() =>
        option.item.map(
          fileTextLiteral: (value) => [
            TextSpan(
              text: 'Display text of the variable.',
              style: style,
            ),
            // TextSpan(
            //   text: ' That is:\nThe text the ',
            //   style: style,
            // ),
            // TextSpan(
            //   text: 'user typed',
            //   style: superBoldStyle,
            // ),
            // TextSpan(
            //   text:
            //       'the text the user typed in the text field of the variable "',
            //   style: style,
            // ),
            // TextSpan(
            //   text: value.variableName,
            //   style: boldStyle,
            // ),
            // TextSpan(
            //   text: '"',
            //   style: style,
            // ),
          ],
          fileTextOpenScope: (value) => [
            TextSpan(
              text: 'Display content in scope when text is ',
              style: style,
            ),
            TextSpan(
              text: 'EMPTY',
              style: boldStyle,
            ),
            // TextSpan(
            //   text: '. That is:\n',
            //   style: style,
            // ),
            // TextSpan(
            //   text: 'Will display text ',
            //   style: style,
            // ),
            // TextSpan(text: 'inside', style: boldStyle),
            // TextSpan(
            //   text: ' the ',
            //   style: style,
            // ),
            // TextSpan(
            //   text: 'scope',
            //   style: boldStyle,
            // ),
            // TextSpan(
            //   text: ' when, whoever is using this template, has ',
            //   style: style,
            // ),
            // TextSpan(text: 'NOT', style: superBoldStyle),
            // TextSpan(
            //   text: ' written anything in the text field of the variable "',
            //   style: style,
            // ),
            // TextSpan(
            //   text: value.variableName,
            //   style: boldStyle,
            // ),
            // TextSpan(
            //   text: '"',
            //   style: style,
            // ),
          ],
          fileTextInvertedScope: (value) => [
            TextSpan(
              text: 'Display content in scope when text is ',
              style: style,
            ),
            TextSpan(text: 'NOT EMPTY', style: superBoldStyle),
            // TextSpan(
            //   text: '. That is:\n',
            //   style: style,
            // ),
            // TextSpan(
            //   text: 'Will display text ',
            //   style: style,
            // ),
            // TextSpan(
            //   text: 'inside',
            //   style: boldStyle,
            // ),
            // TextSpan(
            //   text: ' the ',
            //   style: style,
            // ),
            // TextSpan(
            //   text: 'scope',
            //   style: boldStyle,
            // ),
            // TextSpan(
            //   text: ' when, whoever is using this template, ',
            //   style: style,
            // ),
            // TextSpan(
            //   text: 'did write',
            //   style: superBoldStyle,
            // ),
            // TextSpan(
            //   text: ' something in the text field of the variable "',
            //   style: style,
            // ),
            // TextSpan(
            //   text: value.variableName,
            //   style: boldStyle,
            // ),
            // TextSpan(
            //   text: '"',
            //   style: style,
            // ),
          ],
          fileBooleanOpenScope: (value) => [
            TextSpan(
              text:
                  'Display content in scope when "${value.variableName}" checkbox is ',
              style: style,
            ),
            TextSpan(text: 'ACTIVE', style: superBoldStyle),
            TextSpan(
              text: ' ',
              style: boldStyle,
            ),
            TextSpan(
              text: '(selected)',
              style: boldStyle,
            ),
          ],
          fileBooleanInvertedScope: (value) => [
            TextSpan(
              text:
                  'Display content in scope when "${value.variableName}" checkbox is ',
              style: style,
            ),
            TextSpan(
              text: 'INACTIVE',
              style: superBoldStyle,
            ),
            TextSpan(
              text: ' ',
              style: boldStyle,
            ),
            TextSpan(
              text: '(not selected)',
              style: boldStyle,
            ),
          ],
          fileChoiceLiteral: (value) => [
            TextSpan(
              text: 'Display ',
              style: style,
            ),
            TextSpan(
              text: 'plain text',
              style: boldStyle,
            ),
            TextSpan(
              text: ' of the selected option name',
              style: style,
            ),
          ],
          fileModelOpenScope: (value) => [
            TextSpan(
              text: 'Insert the ',
              style: style,
            ),
            TextSpan(
              text: 'scope',
              style: boldStyle,
            ),
            TextSpan(
              text:
                  ' where the "${value.variableName}" variables will be used in.',
              style: style,
            ),
          ],
          fileModelInvertedScope: (value) => [
            TextSpan(
              text: 'Display text in scope when template user did ',
              style: style,
            ),
            TextSpan(
              text: 'NOT',
              style: superBoldStyle,
            ),
            TextSpan(
              text: ' added ',
              style: boldStyle,
            ),
            TextSpan(
              text: 'any',
              style: superBoldStyle,
            ),
            TextSpan(
              text: ' "${value.variableName}" item',
              style: style,
            ),
          ],
          fileChoiceOpenScope: (value) {
            final segments = value.variableName.split('-');
            return [
              TextSpan(
                text: 'Display content in scope when choice is ',
                style: style,
              ),
              TextSpan(
                text: segments.length > 1 ? segments.last : value.variableName,
                style: superBoldStyle,
              ),
            ];
          },
          fileChoiceInvertedScope: (value) {
            final segments = value.variableName.split('-');
            return [
              TextSpan(
                text: 'Display content in scope when choice is ',
                style: style,
              ),
              TextSpan(
                text: 'NOT',
                style: superBoldStyle,
              ),
              TextSpan(
                text: ' ',
                style: boldStyle,
              ),
              TextSpan(
                text: segments.length > 1 ? segments.last : value.variableName,
                style: superBoldStyle,
              ),
            ];
          },
        ),
    };

    // return Tooltip(
    //   richMessage: TextSpan(children: textSpan),
    //   child:
    return MouseRegion(
      onEnter: (PointerEnterEvent event) => _onHoverChanged(enabled: true),
      onExit: (PointerExitEvent event) => _onHoverChanged(enabled: false),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: widget.onSelectCallback,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: isSelected
                ? Theme.of(context).colorScheme.surfaceContainerHighest
                : _isHovered
                    ? Theme.of(context).colorScheme.surfaceContainerHigh
                    : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 8),
                  switch (option) {
                    FolderStructure<FoldableSelection, FileSelection>() => Icon(
                        Icons.account_tree_sharp,
                        color: hardColor,
                        // color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    FileStructureOptions<FoldableSelection, FileSelection>() =>
                      // option.item.toJson() ? iconTag() : iconInvertedScope(),
                      option.item.map(
                        fileTextLiteral: (value) => iconLiteral(),
                        fileBooleanInvertedScope: (value) =>
                            iconInvertedScope(),
                        fileBooleanOpenScope: (value) => iconTag(),
                        fileChoiceInvertedScope: (value) => iconInvertedScope(),
                        fileChoiceLiteral: (value) => iconLiteral(),
                        fileChoiceOpenScope: (value) => iconTag(),
                        fileModelInvertedScope: (value) => iconInvertedScope(),
                        fileModelOpenScope: (value) => iconTag(),
                        fileTextInvertedScope: (value) => iconInvertedScope(),
                        fileTextOpenScope: (value) => iconTag(),
                      ),
                  },
                  const SizedBox(width: 4),
                  Text(
                    switch (option) {
                      FolderStructure<FoldableSelection, FileSelection>() =>
                        option.item.variableName,
                      FileStructureOptions<FoldableSelection,
                            FileSelection>() =>
                        option.item.variableName,
                    },
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: hardColor,
                          height: 0.9,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text.rich(TextSpan(children: textSpan)),
              ),
              const SizedBox(height: 6),
            ],
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
