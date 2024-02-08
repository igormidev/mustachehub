part of '../overlay_controller.dart';

class _LoadingDialog extends StatelessWidget {
  const _LoadingDialog(this.text);
  final String? text;

  @override
  Widget build(BuildContext context) {
    final color1 = Theme.of(context).colorScheme.primaryContainer;
    final color2 = Theme.of(context).colorScheme.secondaryContainer;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [color1.withAlpha(100), color2.withAlpha(130)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 70,
            child: AspectRatio(
              aspectRatio: 1,
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Material(
              color: color2.withAlpha(170),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Loading...',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
