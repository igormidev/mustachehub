import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/presenter/cubits/packages_info_cubit.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/widgets/report_bug/bottomsheets/send_feedback_message_dialog.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ReportBugCard extends StatelessWidget {
  const ReportBugCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<PackagesInfoCubit, PackageInfo?>(builder: (context, state) {
          final version = state?.version;
          return Text(
            version != null ? 'Version: $version' : 'Loading...',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          );
        }),
        const SizedBox(height: 8),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Builder(builder: (context) {
                final style = Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    );
                return RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'App still in ',
                        style: style,
                      ),
                      TextSpan(
                        text: 'beta',
                        style: style?.copyWith(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                );
              }),
              const SizedBox(height: 10),
              _SendMessageButton(
                text: 'Send feedback',
                icon: Icons.feedback,
                onPressed: () {
                  showSendFeedbackMessageDialog(
                    context,
                    SendFeedbackType.feedbackMessage,
                  );
                },
              ),
              const SizedBox(height: 8),
              _SendMessageButton(
                text: 'Report a bug',
                icon: Icons.bug_report,
                onPressed: () {
                  showSendFeedbackMessageDialog(
                    context,
                    SendFeedbackType.reportBug,
                  );
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}

class _SendMessageButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() onPressed;
  const _SendMessageButton({
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        margin: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.onSurface),
            const SizedBox(width: 8),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
