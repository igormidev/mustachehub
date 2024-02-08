part of 'change_password_form_dialog.dart';

mixin ChangePasswordFormDialogMethods<T extends StatefulWidget> on State<T> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _newPasswordEC = TextEditingController();
  final TextEditingController _currentPasswordEC = TextEditingController();

  abstract final ChangePasswordCubit accountCubit;

  void changePassword() {
    final formState = _formKey.currentState;
    if (formState?.validate() != true) return;

    final email = context.userProfile()?.email;
    if (email == null) return;

    final currentPassword = _currentPasswordEC.text;
    final newPassword = _newPasswordEC.text;

    accountCubit.changePassword(
      email: email,
      currentPassword: currentPassword,
      newPassword: newPassword,
    );
  }

  @override
  void dispose() {
    _newPasswordEC.dispose();
    _currentPasswordEC.dispose();
    super.dispose();
  }
}
