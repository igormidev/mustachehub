extension ObjectExtension on Object {
  bool get isStateLoading => toString().toLowerCase().contains('loading');
}
