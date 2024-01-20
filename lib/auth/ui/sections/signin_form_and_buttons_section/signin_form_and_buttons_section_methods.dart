part of 'signin_form_and_buttons_section.dart';

mixin SignInFormAndButtonsSectionMethods on State<SigninFormAndButtonsSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameEC = TextEditingController();
  final TextEditingController _emailEC = TextEditingController();
  final TextEditingController _passwordEC = TextEditingController();

  SignUpFormCubit get signInCubit => context.read<SignUpFormCubit>();

  void _createAccount() {
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
    signInCubit.defineAsInitial();

    signInCubit.createUser(
      name: _nameEC.text,
      email: _emailEC.text,
      password: _passwordEC.text,
    );
  }

  @override
  void dispose() {
    _emailEC.dispose();
    _nameEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }
}
