part of 'login_form_and_buttons_section.dart';

mixin LoginFormAndButtonsSectionMethods on State<LoginFormAndButtonsSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailEC = TextEditingController();
  final TextEditingController _passwordEC = TextEditingController();

  LoginFormCubit get loginCubit => context.read<LoginFormCubit>();

  Future<void> _makeLogin() async {
    final formState = _formKey.currentState;
    if (formState?.validate() != true) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in all fields'),
        ),
      );
      return;
    }

    FocusScope.of(context).unfocus();

    await loginCubit.logInUserWithCredentials(
      email: _emailEC.text,
      password: _passwordEC.text,
    );
  }

  Future<void> _makeLoginWithFacebook() async {
    FocusScope.of(context).unfocus();

    await loginCubit.logInWithFacebook();
  }

  Future<void> _makeLoginWithGoogle() async {
    FocusScope.of(context).unfocus();

    await loginCubit.logInWithGoogle();
  }

  @override
  void dispose() {
    _emailEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }
}
