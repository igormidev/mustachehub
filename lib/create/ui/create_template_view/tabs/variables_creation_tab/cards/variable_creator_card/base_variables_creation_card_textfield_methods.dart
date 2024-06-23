import 'package:flutter/material.dart';

mixin BaseVariablesCreationCardMethods<T extends StatefulWidget> on State<T> {
  final TextEditingController nameEC = TextEditingController();
  final TextEditingController descriptionEC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameEC.dispose();
    descriptionEC.dispose();
  }
}
