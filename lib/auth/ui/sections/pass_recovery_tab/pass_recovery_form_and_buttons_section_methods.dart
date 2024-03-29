part of 'pass_recovery_form_and_buttons_section.dart';

mixin PassRecoveryFormAndButtonsSectionMethods
    on State<PassRecoveryForAndButtonsSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailEC = TextEditingController();

  PassRecoveryFormCubit get signInCubit =>
      context.read<PassRecoveryFormCubit>();

  Future<void> _sendCodeToEmail() async {
    final formState = _formKey.currentState;
    if (formState?.validate() != true) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('Please fill in all fields'),
          ),
        );
      return;
    }

    FocusScope.of(context).unfocus();

    await signInCubit.recoveryPasswordForEmail(
      email: _emailEC.text,
    );
  }

  @override
  void dispose() {
    _emailEC.dispose();
    super.dispose();
  }
}
