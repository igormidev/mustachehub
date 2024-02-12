import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/theme/components/custom_bottom_sheet.dart';
import 'package:mustachehub/create/ui/create_template_view/agregators/generate_dependencies_provider.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/template_output_tab_view/template_output_tab_view.dart';

mixin OpenTemplateOutputBottomsheetMethod {
  void openTemplateOutputDialog(BuildContext context) {
    showCustomBottomSheet(
      context: context,
      horizontalPadding: 20,
      verticalPadding: 10,
      child: GenerateDependenciesProvider(
        contextWithDependencies: context,
        child: TemplateOutputTabView(),
      ),
    );
  }
}
