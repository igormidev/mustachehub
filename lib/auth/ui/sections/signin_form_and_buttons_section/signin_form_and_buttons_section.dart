import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/auth/presenter/cubits/sign_up_form_cubit.dart';

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
          FilledButton(
            onPressed: _createAccountWithCredential,
            child: const Text('Create account'),
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
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Create with Google',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: const Color(0xffDF4A32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Create with Google',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: const Color(0xff39579A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
