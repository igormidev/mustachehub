import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:media_query_core/reactiveness/is_loading_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/account/presenter/cubit/change_password_cubit.dart';
import 'package:mustachehub/account/presenter/cubit/email_verification_cubit.dart';
import 'package:mustachehub/account/presenter/cubit/log_out_cubit.dart';
import 'package:mustachehub/account/presenter/state/change_password_state.dart';
import 'package:mustachehub/account/presenter/state/email_verification_state.dart';
import 'package:mustachehub/account/presenter/state/log_out_state.dart';
import 'package:mustachehub/account/ui/pages/account_page/dialogs/change_password_form_dialog/change_password_form_dialog.dart';
import 'package:mustachehub/account/ui/pages/account_page/widgets/user_info/user_info_text.dart';
import 'package:mustachehub/account/ui/pages/account_page/wrappers/log_out_redirect_wrapper.dart';
import 'package:mustachehub/account/ui/pages/account_page/account_wrappers_agregator.dart';
import 'package:mustachehub/account/ui/widgets/user_display_circle_avatar.dart';

class AccountPage extends StatelessWidget {
  final AccountInfo accountInfo;
  final UserProfile userProfile;
  const AccountPage({
    super.key,
    required this.accountInfo,
    required this.userProfile,
  });

  @override
  Widget build(BuildContext context) {
    return AccountWrappersAgregator(
      child: LogOutRedirectWrapper(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Account'),
          ),
          body: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: 160,
                      height: 160,
                      child: Stack(
                        children: [
                          const UserDisplayCircleAvatar.normalSize(
                            width: 160,
                            height: 160,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.secondary,
                              child: IconButton(
                                onPressed: () {
                                  context.push('/account/changeProfileImage');
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          UserInfoText(
                            title: 'Nickname',
                            value: userProfile.name,
                          ),
                          const Divider(height: 16),
                          UserInfoText(
                            title: 'Email',
                            value: userProfile.email,
                          ),
                          const Divider(height: 16),
                          UserInfoText(
                            title: 'Unique id',
                            value: userProfile.id,
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    title: const Text('Manege credit cards'),
                    trailing: const Icon(Icons.credit_card),
                    onTap: () {},
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    title: const Text('Change password'),
                    trailing: const IsLoadingBloc<ChangePasswordCubit,
                        ChangePasswordState>(
                      child: Icon(Icons.lock),
                    ),
                    onTap: () {
                      final changePassCubit =
                          context.read<ChangePasswordCubit>();

                      showModalBottomSheet(
                        context: context,
                        constraints: const BoxConstraints(
                          maxWidth: double.maxFinite,
                        ),
                        builder: (context) {
                          return ChangePasswordFormDialog(
                            changePasswordCubit: changePassCubit,
                          );
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  if (userProfile.isEmailVerified == false)
                    ListTile(
                      title: const Text('Validate email'),
                      subtitle: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: const [
                            TextSpan(
                              text: 'Your email is not validated. This is a ',
                            ),
                            TextSpan(
                              text: 'security measure',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text: '. Please validate it.',
                            ),
                          ],
                        ),
                      ),
                      trailing: const IsLoadingBloc<EmailVerificationCubit,
                          EmailVerificationState>(
                        child: Icon(Icons.email),
                      ),
                      onTap: () {
                        context
                            .read<EmailVerificationCubit>()
                            .sendEmailVerification();
                      },
                    ),
                  const SizedBox(height: 8),
                  ListTile(
                    title: const Text('Log out'),
                    trailing: const IsLoadingBloc<LogOutCubit, LogOutState>(
                      child: Icon(Icons.exit_to_app),
                    ),
                    onTap: () {
                      context.read<LogOutCubit>().logOut();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
