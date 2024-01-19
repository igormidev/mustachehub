import 'package:flutter/material.dart';

class LoggingAdvantagesCards extends StatelessWidget {
  const LoggingAdvantagesCards({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleSmall;
    final highlightTheme = titleStyle?.copyWith(
      color: Theme.of(context).colorScheme.primary,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
    );
    return Row(
      children: [
        AdvantagesOfLogginInCard(
          iconData: Icons.bookmark,
          texts: [
            TextSpan(
              text: 'Save',
              style: highlightTheme,
            ),
            TextSpan(
              text: ' created\ntemplates in ',
              style: titleStyle,
            ),
            TextSpan(
              text: 'cloud',
              style: highlightTheme,
            ),
          ],
        ),
        const SizedBox(width: 8),
        AdvantagesOfLogginInCard(
          iconData: Icons.language,
          texts: [
            TextSpan(
              text: 'Use your ',
              style: titleStyle,
            ),
            TextSpan(
              text: 'account\ndata',
              style: titleStyle,
            ),
            TextSpan(
              text: ' in ',
              style: titleStyle,
            ),
            TextSpan(
              text: 'any device',
              style: highlightTheme,
            ),
          ],
        ),
      ],
    );
  }
}

class AdvantagesOfLogginInCard extends StatelessWidget {
  final List<InlineSpan>? texts;
  final IconData iconData;
  const AdvantagesOfLogginInCard({
    super.key,
    required this.texts,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiaryContainer,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            const SizedBox(width: 8),
            Icon(
              iconData,
              size: 38,
            ),
            const SizedBox(width: 4),
            RichText(
              text: TextSpan(
                children: texts,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
