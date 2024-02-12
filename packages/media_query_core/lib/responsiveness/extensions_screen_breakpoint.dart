import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';

extension ExtensionsScreenBreakpoint on BuildContext {
  T? whenSizeIsSmallerThen<T>({required ScreenSize size, required T child}) {
    final screenWidth = MediaQuery.of(this).size.width;
    return screenWidth < size.size ? child : null;
  }

  T? whenSizeIsBiggerThen<T>({required ScreenSize size, required T child}) {
    final screenWidth = MediaQuery.of(this).size.width;
    return screenWidth > size.size ? child : null;
  }
}
