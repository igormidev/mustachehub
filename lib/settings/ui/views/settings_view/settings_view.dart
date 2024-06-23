import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/app_core/extensions/build_context_extension.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:mustachehub/settings/interactor/cubit/theme_cubit.dart';
import 'package:mustachehub/settings/ui/views/settings_view/widgets/color_option.dart';
import 'package:mustachehub/settings/ui/views/settings_view/widgets/configurations_lottie.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ThemeCubit>();
    final isDark = bloc.state.brightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;

    final settingsWidget = [
      InkWell(
        onTap: () {
          bloc.selectBrightness(
            isDark ? Brightness.light : Brightness.dark,
          );
        },
        child: Row(
          children: [
            Text(
              'Light mode:',
              style: textTheme.titleLarge,
            ),
            const Spacer(),
            Icon(
              isDark ? Icons.light_mode_outlined : Icons.light_mode,
            ),
            SizedBox(width: context.width * 0.02),
            IgnorePointer(
              child: Switch(
                value: isDark,
                onChanged: (_) {},
              ),
            ),
            SizedBox(width: context.width * 0.02),
            Icon(
              isDark ? Icons.dark_mode_rounded : Icons.dark_mode_outlined,
            ),
          ],
        ),
      ),
      const Divider(height: 20),
      Text(
        'App theme:',
        style: textTheme.titleLarge,
      ),
      const SizedBox(height: 8),
      GridView.extent(
        shrinkWrap: true,
        maxCrossAxisExtent: 50,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: const <Color>[Colors.black, Colors.white]
            .followedBy(Colors.primaries.reversed)
            .followedBy(Colors.accents)
            .where(_removeBlackAndWhite)
            .map(ColorOption.fromColor)
            .toList(growable: false),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: context.drawerOrNull,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: VisibilityWidthBased.fromMediaQueryScreenWidth(
          minimumWidth: ScreenSize.x1300,
          replacement: ListView(
            children: [
              const SizedBox(height: 36),
              const ConfigurationsLottie(),
              const SizedBox(height: 36),
              const Divider(),
              ...settingsWidget,
              const SizedBox(height: 20),
              const Text(
                'v1.1.5',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 40),
            ],
          ),
          child: Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 36),
                    ConfigurationsLottie(),
                    SizedBox(height: 36),
                    Text(
                      'v1.1.5',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: settingsWidget,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _removeBlackAndWhite(Color color) =>
      color != Colors.black && color != Colors.white;
}
