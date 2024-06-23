import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mustachehub/create/presenter/cubits/suggestion_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';

class AddMustacheDelimmiterInputFormatter extends TextInputFormatter {
  final SuggestionCubit sugestionCubit;
  final VariablesCubit varCubit;
  final void Function() onAddedDellimiter;

  AddMustacheDelimmiterInputFormatter({
    required this.sugestionCubit,
    required this.varCubit,
    required this.onAddedDellimiter,
  });

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final isControlZ = oldValue.selection.start == oldValue.selection.end;
    // If needed to get the removed area, uncomment this.
    // final selectedAreaRemovedText = isControlZ
    //     ? null
    //     : oldValue.text
    //         .substring(oldValue.selection.start, oldValue.selection.end);

    final addedTextToSelectedArea = isControlZ
        ? null
        : newValue.text
            .substring(oldValue.selection.start, newValue.selection.end);

    final amoutErased = oldValue.text.length - newValue.text.length;
    final didAddedValidTextToSelectedArea = addedTextToSelectedArea == '{';
    final tappedText = newValue.text.isEmpty
        ? ''
        : didAddedValidTextToSelectedArea
            ? addedTextToSelectedArea
            : newValue.text[newValue.selection.start - 1];

    final didTappedDellimiter = tappedText == '{' &&
        ((amoutErased == -1 || amoutErased == 0) ||
            didAddedValidTextToSelectedArea);
    final newText = newValue.text
        .replaceRange(newValue.selection.start, newValue.selection.end, '{}}');

    if (didTappedDellimiter) {
      setSuggestionFromCurrentCursor(newText, newValue.selection.start + 1);

      return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(
          offset: newValue.selection.start + 1,
        ),
      );
    }
    return newValue;
  }

  @visibleForTesting
  Future<void> setSuggestionFromCurrentCursor(
      String newText, int cursorIndex) async {
    final varState = varCubit.state;

    if (varState.textPipes.isEmpty &&
        varState.booleanPipes.isEmpty &&
        varState.modelPipes.isEmpty) {
      return;
    }
    onAddedDellimiter();
    await Future.delayed(const Duration(milliseconds: 100));
    sugestionCubit.setSuggestions(
      input: newText,
      indexAtText: cursorIndex,
      flatMap: varCubit.state.flatMap,
    );
  }
}
