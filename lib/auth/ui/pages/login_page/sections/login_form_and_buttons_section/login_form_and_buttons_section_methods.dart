part of 'login_form_and_buttons_section.dart';

mixin LoginFormAndButtonsSectionMethods on State<LoginFormAndButtonsSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailEC = TextEditingController();
  final TextEditingController _passwordEC = TextEditingController();

  LoginFormCubit get loginCubit => context.read<LoginFormCubit>();

  void _makeLogin() {
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
    loginCubit.defineAsInitial();

    loginCubit.logInUserWithCredentials(
      email: _emailEC.text,
      password: _passwordEC.text,
    );
  }

  @override
  void dispose() {
    _emailEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }
}
