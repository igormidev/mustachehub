import 'package:flutter/material.dart';
import 'package:mustachehub/account/ui/pages/account_page/wrappers/change_password_redirect_wrapper.dart';
import 'package:mustachehub/account/ui/pages/account_page/wrappers/email_verification_redirect_wrapper.dart';
import 'package:mustachehub/account/ui/pages/account_page/wrappers/log_out_redirect_wrapper.dart';

class AccountWrappersAgregator extends StatelessWidget {
  final Widget child;
  const AccountWrappersAgregator({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ChangePasswordRedirectWrapper(
      child: EmailVerificationRedirectWrapper(
        child: LogOutRedirectWrapper(
          child: child,
        ),
      ),
    );
  }
}
