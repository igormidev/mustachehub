import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_query_core/reactiveness/is_loading_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/auth/presenter/cubits/pass_recovery_form_cubit.dart';
import 'package:mustachehub/auth/presenter/states/pass_recovery_form_state.dart';

part 'pass_recovery_form_and_buttons_section_methods.dart';

class PassRecoveryForAndButtonsSection extends StatefulWidget {
  const PassRecoveryForAndButtonsSection({super.key});

  @override
  State<PassRecoveryForAndButtonsSection> createState() =>
      _PassRecoveryForAndButtonsSectionState();
}

class _PassRecoveryForAndButtonsSectionState
    extends State<PassRecoveryForAndButtonsSection>
    with PassRecoveryFormAndButtonsSectionMethods, ValidatorsMixins {
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
          FilledButton(
            onPressed: _sendCodeToEmail,
            child: const IsLoadingBloc<PassRecoveryFormCubit,
                PassRecoveryFormState>(
              child: Text('Send recovery code to e-mail'),
            ),
          ),
        ],
      ),
    );
  }
}
