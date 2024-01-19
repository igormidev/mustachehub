import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginFormAndButtonsSection extends StatelessWidget {
  const LoginFormAndButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
        ),
        const SizedBox(height: 20),
        FilledButton(
          onPressed: () {},
          child: const Text('Enter'),
        ),
        const SizedBox(height: 20),
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
                  'Enter with Google',
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
                  'Enter with Google',
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
                onPressed: () {},
                child: const Text('Password recovery'),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Create account'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
