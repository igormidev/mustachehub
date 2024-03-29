import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_query_core/reactiveness/boolean_toggle_wrapper.dart';
import 'package:media_query_core/reactiveness/is_loading_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/auth/presenter/cubits/login_form_cubit.dart';
import 'package:mustachehub/auth/presenter/states/login_form_state.dart';
import 'package:mustachehub/auth/ui/sections/widgets/media_buttons.dart';

part 'login_form_and_buttons_section_methods.dart';

class LoginFormAndButtonsSection extends StatefulWidget {
  const LoginFormAndButtonsSection({super.key});

  @override
  State<LoginFormAndButtonsSection> createState() =>
      _LoginFormAndButtonsSectionState();
}

class _LoginFormAndButtonsSectionState extends State<LoginFormAndButtonsSection>
    with LoginFormAndButtonsSectionMethods, ValidatorsMixins {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
          BlocBuilder<LoginFormCubit, LoginFormState>(
            builder: (context, state) {
              return FilledButton(
                onPressed: state.maybeMap(
                  loadingWithCredentials: null,
                  orElse: () => _makeLogin,
                ),
                child: const IsLoadingBloc<LoginFormCubit, LoginFormState>(
                  child: Text('Enter'),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              MediaButtons<LoginFormCubit, LoginFormState>.google(
                text: 'Enter with Google',
                onPressed: _makeLoginWithGoogle,
                isLoading: (state) => state.maybeMap(
                  loadingWithGoogle: (_) => true,
                  orElse: () => false,
                ),
              ),
              const SizedBox(width: 8),
              MediaButtons<LoginFormCubit, LoginFormState>.facebook(
                text: 'Enter with Facebook',
                onPressed: _makeLoginWithFacebook,
                isLoading: (state) => state.maybeMap(
                  loadingWithFacebook: (_) => true,
                  orElse: () => false,
                ),
              ),
            ],
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
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    context.go('/auth/passrecovery');
                  },
                  child: const Text('Password recovery'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    context.go('/auth/signin');
                  },
                  child: const Text('Create account'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
