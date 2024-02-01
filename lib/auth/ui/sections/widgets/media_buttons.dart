import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mustachehub/app_core/theme/components/mustache_button_loader.dart';

enum _MediaType {
  facebook(iconData: FontAwesomeIcons.facebook, colorButton: Color(0xff39579A)),
  google(iconData: FontAwesomeIcons.google, colorButton: Color(0xffDF4A32));

  final IconData iconData;
  final Color colorButton;

  const _MediaType({
    required this.iconData,
    required this.colorButton,
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
  const MediaButtons.google({
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
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: 32),
                      child: MustacheButtonLoader(color: Colors.white),
                    ),
                  )
                : Row(
                    children: [
                      Expanded(
                        child: Text(
                          text,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ],
                  ),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: _mediaType.colorButton,
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
