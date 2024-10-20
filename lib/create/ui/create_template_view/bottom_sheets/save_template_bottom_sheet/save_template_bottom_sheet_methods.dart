part of 'save_template_bottom_sheet.dart';

mixin SaveTemplateBottomSheetMethods on State<SaveTemplateBottomSheet> {
  late TextEditingController _nameEC;
  late TextEditingController _descriptionEC;

  final Debouncer _debouncer = Debouncer(timerDuration: 500.ms);
  late final bool isEditing;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    isEditing = widget.packageFormCubit.state.isEditing;

    _nameEC = TextEditingController(text: _getInitialPackageName());
    _descriptionEC =
        TextEditingController(text: _getInitialPackageDescription());

    _nameEC.addListener(_updateName);
    _descriptionEC.addListener(_updateName);
  }

  @override
  void dispose() {
    super.dispose();
    _nameEC.dispose();
    _descriptionEC.dispose();

    _debouncer.dispose();
    _nameEC.removeListener(_updateName);
    _descriptionEC.removeListener(_updateName);
  }

  String? _getInitialPackageName() {
    return widget.packageFormCubit.state.mapOrNull(
      normal: (value) => value.formData.title,
    );
  }

  String? _getInitialPackageDescription() {
    return widget.packageFormCubit.state.mapOrNull(
      normal: (value) => value.formData.description,
    );
  }

  void _updateName() async {
    _debouncer.resetDebounce(() {
      widget.packageFormCubit.updateNameAndDescription(
        name: _nameEC.text,
        description: _descriptionEC.text,
      );
    });
  }

  void _onSaveTemplate() {
    final userUUID = context.userProfile()?.id;
    if (!context.isUserLoggedIn || userUUID == null) {
      if (kReleaseMode) {
        FirebaseAnalytics.instance.logEvent(name: 'save_template_intent');
      }
      showNeedToLogInDialog(context);
      return;
    }

    if (_formKey.currentState?.validate() != true) {
      return;
    }

    if (kReleaseMode) {
      FirebaseAnalytics.instance.logEvent(name: 'save_template_intent');
    }

    final expectectedPayload = widget.variablesCubit.state.getExpectedPayload;

    final newPackageInfo = widget.packageFormCubit.state.packageInfo;

    if (newPackageInfo == null) return;

    final contentCubit = widget.contentCubit;
    final ContentStringState contentState = contentCubit.state;

    if (isEditing) {
      if (kReleaseMode) {
        FirebaseAnalytics.instance.logEvent(name: 'template_edit');
      }
      final template = widget.currentTemplateTypeCubit.state.mapOrNull(
        withExistingTemplate: (value) => value.template,
      );
      final id = template?.id;
      final metadata = template?.metadata;
      if (id == null || metadata == null) return;

      widget.templateUploadCubit.updatePackage(
        template: Template(
          id: id,
          info: newPackageInfo,
          payload: expectectedPayload,
          output: contentState.currentText,
          metadata: metadata.copyWith(
            // usersPermission: {
            //   ...metadata.usersPermission,
            //   userUUID: TemplatePermissions
            //       .fullAccess.name,
            // },
            updatedAt: DateTime.now(),
          ),
        ),
      );
    } else {
      if (kReleaseMode) {
        FirebaseAnalytics.instance.logEvent(name: 'template_create');
      }
      widget.templateUploadCubit.createPackage(
        output: contentState.currentText,
        packageInfo: newPackageInfo,
        expectedPayload: expectectedPayload,
      );
    }
  }
}
