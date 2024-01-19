import 'package:flutter/material.dart';

enum ENavigationPossibilities {
  collection(
    Icons.collections_bookmark_outlined,
    Icons.collections_bookmark_rounded,
  ),

  generateText(
    Icons.generating_tokens_outlined,
    Icons.generating_tokens,
  ),

  createMustache(
    Icons.add_box_outlined,
    Icons.add_box_rounded,
  ),

  account(
    Icons.person_outline_rounded,
    Icons.person_rounded,
  ),

  auth(
    Icons.key,
    Icons.key_outlined,
  ),

  settings(
    Icons.settings_outlined,
    Icons.settings,
  ),

  becamePremium(
    Icons.star_outline_rounded,
    Icons.star_rounded,
  );

  // ignore: non_constant_identifier_names
  static ENavigationPossibilities DEFAULT_POSSIBILITY =
      ENavigationPossibilities.collection;

  final IconData selectedIcon;
  final IconData unselectedIcon;
  const ENavigationPossibilities(
    this.unselectedIcon,
    this.selectedIcon,
  );
}
