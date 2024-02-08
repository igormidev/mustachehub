import 'package:flutter/material.dart';
import 'package:mustachehub/account/ui/pages/account_page/pages/account_image_select_page/wrappers/image_updater_wrapper.dart';

class AccountImageSelectPageAgregator extends StatelessWidget {
  final Widget child;
  const AccountImageSelectPageAgregator({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ImageUpdaterWrapper(
      child: child,
    );
  }
}
