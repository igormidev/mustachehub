import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mustachehub/app_core/theme/components/mustache_button_loader.dart';

enum _MediaType {
  facebook(iconData: FontAwesomeIcons.facebook),
  google(iconData: FontAwesomeIcons.google);

  final IconData iconData;

  const _MediaType({
    required this.iconData,
  });
}

class MediaButtons<B extends StateStreamable<S>, S> extends StatelessWidget {
  final String text;
  final _MediaType _mediaType;
  final void Function() onPressed;
  final bool Function(S state) isLoading;

  const MediaButtons.facebook({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isLoading,
  }) : _mediaType = _MediaType.facebook;
  const MediaButtons.instagram({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isLoading,
  }) : _mediaType = _MediaType.google;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<B, S>(
        builder: (context, state) {
          return ElevatedButton.icon(
            onPressed: isLoading(state) ? null : onPressed,
            icon: Icon(
              _mediaType.iconData,
              color: Colors.white,
            ),
            label: isLoading(state)
                ? const MustacheButtonLoader(color: Colors.white)
                : Text(
                    text,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: const Color(0xffDF4A32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // <-- Radius
              ),
            ),
          );
        },
      ),
    );
  }
}
