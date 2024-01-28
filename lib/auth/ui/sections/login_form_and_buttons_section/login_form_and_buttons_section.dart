import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/components/mustache_button_loader.dart';
import 'package:mustachehub/auth/presenter/cubits/login_form_cubit.dart';
import 'package:mustachehub/auth/presenter/states/login_form_state.dart';

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
          TextFormField(
            controller: _passwordEC,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
            validator: (val) => combineValidators([
              () => isNotEmpty(val),
              () => lenghtHasToBeAtLeast(8, val),
            ]),
          ),
          const SizedBox(height: 20),
          BlocBuilder<LoginFormCubit, LoginFormState>(
              builder: (context, state) {
            return FilledButton(
              onPressed: state.maybeMap(
                loadingWithCredentials: null,
                orElse: () => _makeLogin,
              ),
              child: state.maybeMap(
                loadingWithCredentials: (_) => const MustacheButtonLoader(),
                orElse: () => const Text('Enter'),
              ),
            );
          }),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: BlocBuilder<LoginFormCubit, LoginFormState>(
                  builder: (context, state) {
                    return ElevatedButton.icon(
                      onPressed: state.maybeMap(
                        loadingWithGoogle: null,
                        orElse: () => _makeLoginWithGoogle,
                      ),
                      icon: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                      ),
                      label: state.maybeMap(
                        loadingWithGoogle: (_) =>
                            const MustacheButtonLoader(color: Colors.white),
                        orElse: () => Text(
                          'Enter with Google',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        backgroundColor: const Color(0xffDF4A32),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: BlocBuilder<LoginFormCubit, LoginFormState>(
                  builder: (context, state) {
                    return ElevatedButton.icon(
                      onPressed: state.maybeMap(
                        loadingWithFacebook: null,
                        orElse: () => _makeLoginWithFacebook,
                      ),
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                      ),
                      label: state.maybeMap(
                        loadingWithFacebook: (_) =>
                            const MustacheButtonLoader(color: Colors.white),
                        orElse: () => Text(
                          'Enter with Facebook',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        backgroundColor: const Color(0xff39579A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    );
                  },
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
