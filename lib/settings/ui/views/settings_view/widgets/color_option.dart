import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/extensions/context_extensions.dart';
import 'package:mustachehub/settings/interactor/cubit/theme_cubit.dart';
import 'package:mustachehub/settings/interactor/state/theme_state.dart';

class _LogColor {
  static final Debouncer debouncer = Debouncer(timerDuration: 1.seconds);
  static void logEventName() {
    debouncer.resetDebounce(() {
      FirebaseAnalytics.instance.logEvent(name: 'color_switched');
    });
  }
}

class ColorOption extends StatelessWidget {
  const ColorOption({
    super.key,
    required this.color,
  });

  factory ColorOption.fromColor(Color color) => ColorOption(color: color);

  final Color color;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ThemeCubit>();
    final isSelected = bloc.state.color == Color(color.value);

    return InkWell(
      onTap: () {
        _LogColor.logEventName();
        bloc.selectColor(color);
      },
      child: SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (isSelected)
              CircleAvatar(
                backgroundColor: context.scheme.inverseSurface,
                radius: 20,
              ),
            CircleAvatar(
              backgroundColor: color,
              radius: isSelected ? 16 : 20,
            ),
            if (isSelected)
              Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: context.scheme.inverseSurface,
                  child: Icon(
                    Icons.check,
                    color: context.scheme.surface,
                    size: 16,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
