import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_methods.dart';
import 'package:text_analyser/text_analyser.dart';

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
    widget.tileFocusNode.addListener(_setIsFocus);
  }

  @override
  void dispose() {
    widget.tileFocusNode.addListener(_setIsFocus);
    super.dispose();
  }

  void _setIsFocus() {
    setState(() {
      isFocused = widget.tileFocusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(),
        // Text(),
      ],
    );
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
    //     color: Colors.amber,
    //   ),
    // );
  }
}
