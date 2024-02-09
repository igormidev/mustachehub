mixin DefaultIdCaster {
  /// Returns null if did not cast to a valid text that can be used as a mustache id
  ///
  /// Valid mustache ids are a-z and A-Z
  /// Cast will try to transform caracters to that valid caracters
  /// Exemple:
  /// ç => c
  /// á => a
  /// à => a
  /// ô => o
  /// etc...
  String? tryValidCast(String? value) {
    if (value == null) return null;
    final validRegex = RegExp(r'^[a-zA-Z ]+$');

    final newValue = value
        .replaceAll(RegExp('ã|à|á|â|å|ä|ā|æ'), 'a')
        .replaceAll(RegExp('Ã|À|Á|Â|Å|Ä|Ā|Æ'), 'A')
        .replaceAll(RegExp('ó|ò|ô|ö|õ|ō|ø|œ'), 'o')
        .replaceAll(RegExp('Ó|Ò|Ô|Ö|Õ|Ō|Ø|Œ'), 'O')
        .replaceAll(RegExp('ú|ù|ū'), 'u')
        .replaceAll(RegExp('Ú|Ù|Ū'), 'U')
        .replaceAll(RegExp('í|ì|ī|î|ï'), 'i')
        .replaceAll(RegExp('Í|Ì|Ī|Î|Ï'), 'I')
        .replaceAll(RegExp('é|ē'), 'e')
        .replaceAll(RegExp('É|Ē'), 'E')
        .replaceAll(RegExp('ç'), 'c')
        .replaceAll(RegExp('Ç'), 'C')
        .replaceAll(RegExp('ñ'), 'n')
        .replaceAll(RegExp('Ñ'), 'N')
        .replaceAll(RegExp('ý|ÿ'), 'y')
        .replaceAll(RegExp('Ý|Ÿ'), 'Y')
        .replaceAll(RegExp('ð'), 'd')
        .replaceAll(RegExp('Ð'), 'D')
        .replaceAll(RegExp('[?]'), '')
        .replaceAll(RegExp('¿|¡|ß'), '');

    if (newValue.isNotEmpty && validRegex.hasMatch(newValue)) {
      return newValue;
    }

    return null;
  }
}
