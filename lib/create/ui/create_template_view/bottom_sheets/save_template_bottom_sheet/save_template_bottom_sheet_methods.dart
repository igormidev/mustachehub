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
      normal: (_) => _.formData.title,
    );
  }

  String? _getInitialPackageDescription() {
    return widget.packageFormCubit.state.mapOrNull(
      normal: (_) => _.formData.description,
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
      showNeedToLogInDialog(context);
      return;
    }

    if (_formKey.currentState?.validate() != true) {
      return;
    }

    final expectectedPayload = widget.variablesCubit.state.getExpectedPayload;

    final newPackageInfo = widget.packageFormCubit.state.packageInfo;

    if (newPackageInfo == null) return;

    final contentCubit = context.read<ContentStringCubit>();
    final ContentStringState contentState = contentCubit.state;

    if (isEditing) {
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
          content: contentState.currentText,
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
      widget.templateUploadCubit.createPackage(
        content: contentState.currentText,
        packageInfo: newPackageInfo,
        expectedPayload: expectectedPayload,
      );
    }
  }
}
