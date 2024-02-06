import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/account/ui/pages/account_page/widgets/user_info/user_info_text.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Theme.of(context).colorScheme.outlineVariant,
              listTileTheme: Theme.of(context).listTileTheme.copyWith(
                    tileColor: Theme.of(context).colorScheme.primaryContainer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
              iconTheme: Theme.of(context).iconTheme.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
            ),
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: 160,
                    height: 160,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: userProfile.urlDisplayImage != null
                              ? NetworkImage(
                                  userProfile.urlDisplayImage!,
                                )
                              : null,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            child: IconButton(
                              onPressed: () {},
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
                          title: 'Unique id:',
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
                  trailing: const Icon(Icons.lock),
                  onTap: () {},
                ),
                const SizedBox(height: 8),
                ListTile(
                  title: const Text('Validate email'),
                  trailing: const Icon(Icons.mark_email_read_rounded),
                  onTap: () {},
                ),
                const SizedBox(height: 8),
                ListTile(
                  title: const Text('Logout'),
                  trailing: const Icon(Icons.exit_to_app),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
