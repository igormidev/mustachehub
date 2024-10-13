import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/implementations/show_message_dialog.dart';

enum SendFeedbackType {
  feedbackMessage,
  reportBug,
}

Future<void> showSendFeedbackMessageDialog(
  BuildContext context,
  SendFeedbackType type,
) async {
  return showDialog<void>(
    context: context,
    builder: (context) {
      return SendFeedbackMessageDialog(
        type: type,
      );
    },
  );
}

class SendFeedbackMessageDialog extends StatefulWidget {
  final SendFeedbackType type;
  const SendFeedbackMessageDialog({super.key, required this.type});

  @override
  State<SendFeedbackMessageDialog> createState() =>
      _SendFeedbackMessageDialogState();
}

class _SendFeedbackMessageDialogState extends State<SendFeedbackMessageDialog>
    with ValidatorsMixins {
  final TextEditingController _messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                switch (widget.type) {
                  SendFeedbackType.feedbackMessage => 'Feedback message',
                  SendFeedbackType.reportBug => 'Report bug',
                },
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              Builder(builder: (context) {
                final style = Theme.of(context).textTheme.bodyLarge;
                final focusStyle = style?.copyWith(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).colorScheme.primary,
                );

                return RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: style,
                    children: [
                      const TextSpan(text: 'We read '),
                      TextSpan(text: 'all', style: focusStyle),
                      const TextSpan(text: ' the feedbacks. It\'s '),
                      TextSpan(text: 'you', style: focusStyle),
                      const TextSpan(
                          text: ' helping mustachehub to become even better.'),
                    ],
                  ),
                );
              }),
              const SizedBox(height: 16),
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: _messageController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(12),
                    hintText: switch (widget.type) {
                      SendFeedbackType.feedbackMessage =>
                        'Type here your feedback message',
                      SendFeedbackType.reportBug =>
                        'Type here the what is the bug and how to reproduce it so we can fix it as soon as possible...',
                    },
                  ),
                  validator: isNotEmpty,
                ),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: isLoading
                    ? null
                    : () async {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }

                        setState(() {
                          isLoading = true;
                        });

                        await Future.delayed(const Duration(seconds: 1));

                        final route = switch (widget.type) {
                          SendFeedbackType.feedbackMessage => 'feedback',
                          SendFeedbackType.reportBug => 'bug',
                        };
                        final String? userid =
                            FirebaseAuth.instance.currentUser?.uid;
                        await FirebaseFirestore.instance
                            .collection('feedbacks_$route')
                            .add({
                          'message': _messageController.text,
                          if (userid != null) 'userid': userid,
                        });

                        setState(() {
                          isLoading = false;
                        });

                        Navigator.of(context).pop();

                        showMessageDialog(
                          context,
                          title: 'Feedback sent!',
                          icon: const Icon(Icons.check),
                        );
                      },
                child: isLoading
                    ? Center(
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      )
                    : const Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
