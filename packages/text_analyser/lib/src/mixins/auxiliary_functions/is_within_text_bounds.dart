part of '../all_variables.dart';

mixin IsWithinTextBounds on AllVariables {
  bool isWithinBounds() {
    final isIndexInText = indexAtText >= 0 && indexAtText <= input.length;
    if (isIndexInText == false) {
      return false;
    }

    return true;
  }
}
