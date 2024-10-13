import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/app_core/extensions/build_context_extension.dart';
import 'package:mustachehub/dashboard/presenter/cubits/packages_info_cubit.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/widgets/report_bug/report_bug_card.dart';
import 'package:mustachehub/settings/interactor/cubit/theme_cubit.dart';
import 'package:mustachehub/settings/ui/views/settings_view/widgets/color_option.dart';
import 'package:mustachehub/settings/ui/views/settings_view/widgets/configurations_lottie.dart';
import 'package:package_info_plus/package_info_plus.dart';

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
          if (isDark) {
            FirebaseAnalytics.instance.logEvent(name: 'switch_to_light_mode');
          } else {
            FirebaseAnalytics.instance.logEvent(name: 'switch_to_dark_mode');
          }
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
              BlocBuilder<PackagesInfoCubit, PackageInfo?>(
                  builder: (context, state) {
                final version = state?.version;

                return Text(
                  'Version: ${version ?? versionmock}',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                );
              }),
              const SizedBox(height: 40),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 36),
                    const ConfigurationsLottie(),
                    const SizedBox(height: 36),
                    BlocBuilder<PackagesInfoCubit, PackageInfo?>(
                        builder: (context, state) {
                      final version = state?.version;

                      return Text(
                        'Version: ${version ?? versionmock}',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                      );
                    }),
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
