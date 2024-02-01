import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_query_core/reactiveness/boolean_toggle_wrapper.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/auth/presenter/cubits/sign_up_form_cubit.dart';
import 'package:mustachehub/auth/presenter/states/sign_up_form_state.dart';
import 'package:mustachehub/auth/ui/sections/widgets/media_buttons.dart';

part 'signin_form_and_buttons_section_methods.dart';

class SigninFormAndButtonsSection extends StatefulWidget {
  const SigninFormAndButtonsSection({super.key});

  @override
  State<SigninFormAndButtonsSection> createState() =>
      _SigninFormAndButtonsSectionState();
}

class _SigninFormAndButtonsSectionState
    extends State<SigninFormAndButtonsSection>
    with SignInFormAndButtonsSectionMethods, ValidatorsMixins {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: _nameEC,
            decoration: const InputDecoration(
              labelText: 'Full name',
            ),
            validator: (val) => combineValidators([
              () => isNotEmpty(val),
              () => needsToMatchRegex(RegExp('^[a-zA-Z\\s]+'), val),
            ]),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _emailEC,
            validator: isValidEmail,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 20),
          BooleanToggleWrapper(
            builder: (context, isVisible, toggleFunction) {
              return TextFormField(
                controller: _passwordEC,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: IconButton(
                      onPressed: toggleFunction,
                      icon: Icon(
                        isVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                obscureText: isVisible == false,
                validator: (val) => combineValidators([
                  () => isNotEmpty(val),
                  () => lenghtHasToBeAtLeast(8, val),
                ]),
              );
            },
          ),
          const SizedBox(height: 20),
          BlocBuilder<SignUpFormCubit, SignUpFormState>(
            builder: (context, state) {
              return FilledButton(
                onPressed: state.maybeMap(
                  loadingWithCredentials: null,
                  orElse: () => _createAccountWithCredential,
                ),
                child: state.maybeMap(
                  loadingWithCredentials: (_) => const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(color: Colors.white),
                  ),
                  orElse: () => const Text('Create account'),
                ),
              );
            },
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Expanded(child: Divider(endIndent: 8)),
              Text(
                'Or',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Expanded(child: Divider(indent: 8)),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              MediaButtons<SignUpFormCubit, SignUpFormState>.google(
                text: 'Create with Google',
                onPressed: _createAccountWithGoogle,
                isLoading: (state) => state.maybeMap(
                  loadingWithGoogle: (_) => true,
                  orElse: () => false,
                ),
              ),
              const SizedBox(width: 8),
              MediaButtons<SignUpFormCubit, SignUpFormState>.facebook(
                text: 'Create with Facebook',
                onPressed: _createAccountWithFacebook,
                isLoading: (state) => state.maybeMap(
                  loadingWithGoogle: (_) => true,
                  orElse: () => false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
