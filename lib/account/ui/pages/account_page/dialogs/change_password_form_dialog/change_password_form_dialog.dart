import 'package:commom_states/states/session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/account/presenter/cubit/change_password_cubit.dart';
import 'package:mustachehub/account/presenter/state/change_password_state.dart';
import 'package:mustachehub/app_core/extensions/default_state_extension.dart';
import 'package:mustachehub/app_core/theme/components/mustache_button_loader.dart';
part 'change_password_form_dialog_methods.dart';

class ChangePasswordFormDialog extends StatefulWidget {
  final ChangePasswordCubit changePasswordCubit;
  const ChangePasswordFormDialog({
    super.key,
    required this.changePasswordCubit,
  });

  @override
  State<ChangePasswordFormDialog> createState() =>
      _ChangePasswordFormDialogState();
}

class _ChangePasswordFormDialogState extends State<ChangePasswordFormDialog>
    with ChangePasswordFormDialogMethods, ValidatorsMixins {
  @override
  ChangePasswordCubit get accountCubit => widget.changePasswordCubit;

  @override
  Widget build(BuildContext context) {
    const changePasswordText = 'Want to change your password?';

    const changePasswordDescription = 'Fullfill the form below to change your '
        'password';
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        color: Colors.transparent,
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            children: [
              const SizedBox(height: 20),
              Text(
                changePasswordText,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 20),
              const Text(
                changePasswordDescription,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _currentPasswordEC,
                decoration: const InputDecoration(
                  labelText: 'Your current password',
                ),
                validator: (val) => combineValidators([
                  () => isNotEmpty(val),
                  () => lenghtHasToBeAtLeast(8, val),
                ]),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _newPasswordEC,
                decoration: const InputDecoration(
                  labelText: 'Your new password',
                ),
                validator: (val) => combineValidators([
                  () => isNotEmpty(val),
                  () => lenghtHasToBeAtLeast(8, val),
                ]),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
                      builder: (context, state) {
                    final isLoading = state.isStateLoading;
                    return ElevatedButton.icon(
                      onPressed: isLoading ? null : changePassword,
                      icon: isLoading
                          ? const MustacheButtonLoader()
                          : const Icon(Icons.save),
                      label: const Text('Change password'),
                    );
                  }),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Close'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
