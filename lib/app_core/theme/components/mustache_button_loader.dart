import 'package:flutter/material.dart';

class MustacheButtonLoader extends StatelessWidget {
  final Color color;
  const MustacheButtonLoader({
    super.key,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
