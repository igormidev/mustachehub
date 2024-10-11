// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foldable_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoldableSelection _$FoldableSelectionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'folderText':
      return _FoldableSelectionFolderText.fromJson(json);
    case 'folderBoolean':
      return _FoldableSelectionFolderBoolean.fromJson(json);
    case 'folderChoice':
      return _FoldableSelectionFolderChoice.fromJson(json);
    case 'folderItemsModel':
      return _FoldableSelectionFolderItemsModel.fromJson(json);
    case 'folderModel':
      return _FoldableSelectionFolderModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FoldableSelection',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FoldableSelection {
  String get variableName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) folderText,
    required TResult Function(String variableName) folderBoolean,
    required TResult Function(String variableName) folderChoice,
    required TResult Function(String variableName) folderItemsModel,
    required TResult Function(String variableName) folderModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? folderText,
    TResult? Function(String variableName)? folderBoolean,
    TResult? Function(String variableName)? folderChoice,
    TResult? Function(String variableName)? folderItemsModel,
    TResult? Function(String variableName)? folderModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? folderText,
    TResult Function(String variableName)? folderBoolean,
    TResult Function(String variableName)? folderChoice,
    TResult Function(String variableName)? folderItemsModel,
    TResult Function(String variableName)? folderModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoldableSelectionFolderText value) folderText,
    required TResult Function(_FoldableSelectionFolderBoolean value)
        folderBoolean,
    required TResult Function(_FoldableSelectionFolderChoice value)
        folderChoice,
    required TResult Function(_FoldableSelectionFolderItemsModel value)
        folderItemsModel,
    required TResult Function(_FoldableSelectionFolderModel value) folderModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoldableSelectionFolderText value)? folderText,
    TResult? Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult? Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult? Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult? Function(_FoldableSelectionFolderModel value)? folderModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoldableSelectionFolderText value)? folderText,
    TResult Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult Function(_FoldableSelectionFolderModel value)? folderModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FoldableSelection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoldableSelectionCopyWith<FoldableSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoldableSelectionCopyWith<$Res> {
  factory $FoldableSelectionCopyWith(
          FoldableSelection value, $Res Function(FoldableSelection) then) =
      _$FoldableSelectionCopyWithImpl<$Res, FoldableSelection>;
  @useResult
  $Res call({String variableName});
}

/// @nodoc
class _$FoldableSelectionCopyWithImpl<$Res, $Val extends FoldableSelection>
    implements $FoldableSelectionCopyWith<$Res> {
  _$FoldableSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
  }) {
    return _then(_value.copyWith(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoldableSelectionFolderTextImplCopyWith<$Res>
    implements $FoldableSelectionCopyWith<$Res> {
  factory _$$FoldableSelectionFolderTextImplCopyWith(
          _$FoldableSelectionFolderTextImpl value,
          $Res Function(_$FoldableSelectionFolderTextImpl) then) =
      __$$FoldableSelectionFolderTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String variableName});
}

/// @nodoc
class __$$FoldableSelectionFolderTextImplCopyWithImpl<$Res>
    extends _$FoldableSelectionCopyWithImpl<$Res,
        _$FoldableSelectionFolderTextImpl>
    implements _$$FoldableSelectionFolderTextImplCopyWith<$Res> {
  __$$FoldableSelectionFolderTextImplCopyWithImpl(
      _$FoldableSelectionFolderTextImpl _value,
      $Res Function(_$FoldableSelectionFolderTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
  }) {
    return _then(_$FoldableSelectionFolderTextImpl(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoldableSelectionFolderTextImpl
    implements _FoldableSelectionFolderText {
  _$FoldableSelectionFolderTextImpl(
      {required this.variableName, final String? $type})
      : $type = $type ?? 'folderText';

  factory _$FoldableSelectionFolderTextImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FoldableSelectionFolderTextImplFromJson(json);

  @override
  final String variableName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FoldableSelection.folderText(variableName: $variableName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoldableSelectionFolderTextImpl &&
            (identical(other.variableName, variableName) ||
                other.variableName == variableName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, variableName);

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoldableSelectionFolderTextImplCopyWith<_$FoldableSelectionFolderTextImpl>
      get copyWith => __$$FoldableSelectionFolderTextImplCopyWithImpl<
          _$FoldableSelectionFolderTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) folderText,
    required TResult Function(String variableName) folderBoolean,
    required TResult Function(String variableName) folderChoice,
    required TResult Function(String variableName) folderItemsModel,
    required TResult Function(String variableName) folderModel,
  }) {
    return folderText(variableName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? folderText,
    TResult? Function(String variableName)? folderBoolean,
    TResult? Function(String variableName)? folderChoice,
    TResult? Function(String variableName)? folderItemsModel,
    TResult? Function(String variableName)? folderModel,
  }) {
    return folderText?.call(variableName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? folderText,
    TResult Function(String variableName)? folderBoolean,
    TResult Function(String variableName)? folderChoice,
    TResult Function(String variableName)? folderItemsModel,
    TResult Function(String variableName)? folderModel,
    required TResult orElse(),
  }) {
    if (folderText != null) {
      return folderText(variableName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoldableSelectionFolderText value) folderText,
    required TResult Function(_FoldableSelectionFolderBoolean value)
        folderBoolean,
    required TResult Function(_FoldableSelectionFolderChoice value)
        folderChoice,
    required TResult Function(_FoldableSelectionFolderItemsModel value)
        folderItemsModel,
    required TResult Function(_FoldableSelectionFolderModel value) folderModel,
  }) {
    return folderText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoldableSelectionFolderText value)? folderText,
    TResult? Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult? Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult? Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult? Function(_FoldableSelectionFolderModel value)? folderModel,
  }) {
    return folderText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoldableSelectionFolderText value)? folderText,
    TResult Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult Function(_FoldableSelectionFolderModel value)? folderModel,
    required TResult orElse(),
  }) {
    if (folderText != null) {
      return folderText(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FoldableSelectionFolderTextImplToJson(
      this,
    );
  }
}

abstract class _FoldableSelectionFolderText implements FoldableSelection {
  factory _FoldableSelectionFolderText({required final String variableName}) =
      _$FoldableSelectionFolderTextImpl;

  factory _FoldableSelectionFolderText.fromJson(Map<String, dynamic> json) =
      _$FoldableSelectionFolderTextImpl.fromJson;

  @override
  String get variableName;

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoldableSelectionFolderTextImplCopyWith<_$FoldableSelectionFolderTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FoldableSelectionFolderBooleanImplCopyWith<$Res>
    implements $FoldableSelectionCopyWith<$Res> {
  factory _$$FoldableSelectionFolderBooleanImplCopyWith(
          _$FoldableSelectionFolderBooleanImpl value,
          $Res Function(_$FoldableSelectionFolderBooleanImpl) then) =
      __$$FoldableSelectionFolderBooleanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String variableName});
}

/// @nodoc
class __$$FoldableSelectionFolderBooleanImplCopyWithImpl<$Res>
    extends _$FoldableSelectionCopyWithImpl<$Res,
        _$FoldableSelectionFolderBooleanImpl>
    implements _$$FoldableSelectionFolderBooleanImplCopyWith<$Res> {
  __$$FoldableSelectionFolderBooleanImplCopyWithImpl(
      _$FoldableSelectionFolderBooleanImpl _value,
      $Res Function(_$FoldableSelectionFolderBooleanImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
  }) {
    return _then(_$FoldableSelectionFolderBooleanImpl(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoldableSelectionFolderBooleanImpl
    implements _FoldableSelectionFolderBoolean {
  _$FoldableSelectionFolderBooleanImpl(
      {required this.variableName, final String? $type})
      : $type = $type ?? 'folderBoolean';

  factory _$FoldableSelectionFolderBooleanImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FoldableSelectionFolderBooleanImplFromJson(json);

  @override
  final String variableName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FoldableSelection.folderBoolean(variableName: $variableName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoldableSelectionFolderBooleanImpl &&
            (identical(other.variableName, variableName) ||
                other.variableName == variableName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, variableName);

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoldableSelectionFolderBooleanImplCopyWith<
          _$FoldableSelectionFolderBooleanImpl>
      get copyWith => __$$FoldableSelectionFolderBooleanImplCopyWithImpl<
          _$FoldableSelectionFolderBooleanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) folderText,
    required TResult Function(String variableName) folderBoolean,
    required TResult Function(String variableName) folderChoice,
    required TResult Function(String variableName) folderItemsModel,
    required TResult Function(String variableName) folderModel,
  }) {
    return folderBoolean(variableName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? folderText,
    TResult? Function(String variableName)? folderBoolean,
    TResult? Function(String variableName)? folderChoice,
    TResult? Function(String variableName)? folderItemsModel,
    TResult? Function(String variableName)? folderModel,
  }) {
    return folderBoolean?.call(variableName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? folderText,
    TResult Function(String variableName)? folderBoolean,
    TResult Function(String variableName)? folderChoice,
    TResult Function(String variableName)? folderItemsModel,
    TResult Function(String variableName)? folderModel,
    required TResult orElse(),
  }) {
    if (folderBoolean != null) {
      return folderBoolean(variableName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoldableSelectionFolderText value) folderText,
    required TResult Function(_FoldableSelectionFolderBoolean value)
        folderBoolean,
    required TResult Function(_FoldableSelectionFolderChoice value)
        folderChoice,
    required TResult Function(_FoldableSelectionFolderItemsModel value)
        folderItemsModel,
    required TResult Function(_FoldableSelectionFolderModel value) folderModel,
  }) {
    return folderBoolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoldableSelectionFolderText value)? folderText,
    TResult? Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult? Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult? Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult? Function(_FoldableSelectionFolderModel value)? folderModel,
  }) {
    return folderBoolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoldableSelectionFolderText value)? folderText,
    TResult Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult Function(_FoldableSelectionFolderModel value)? folderModel,
    required TResult orElse(),
  }) {
    if (folderBoolean != null) {
      return folderBoolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FoldableSelectionFolderBooleanImplToJson(
      this,
    );
  }
}

abstract class _FoldableSelectionFolderBoolean implements FoldableSelection {
  factory _FoldableSelectionFolderBoolean(
          {required final String variableName}) =
      _$FoldableSelectionFolderBooleanImpl;

  factory _FoldableSelectionFolderBoolean.fromJson(Map<String, dynamic> json) =
      _$FoldableSelectionFolderBooleanImpl.fromJson;

  @override
  String get variableName;

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoldableSelectionFolderBooleanImplCopyWith<
          _$FoldableSelectionFolderBooleanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FoldableSelectionFolderChoiceImplCopyWith<$Res>
    implements $FoldableSelectionCopyWith<$Res> {
  factory _$$FoldableSelectionFolderChoiceImplCopyWith(
          _$FoldableSelectionFolderChoiceImpl value,
          $Res Function(_$FoldableSelectionFolderChoiceImpl) then) =
      __$$FoldableSelectionFolderChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String variableName});
}

/// @nodoc
class __$$FoldableSelectionFolderChoiceImplCopyWithImpl<$Res>
    extends _$FoldableSelectionCopyWithImpl<$Res,
        _$FoldableSelectionFolderChoiceImpl>
    implements _$$FoldableSelectionFolderChoiceImplCopyWith<$Res> {
  __$$FoldableSelectionFolderChoiceImplCopyWithImpl(
      _$FoldableSelectionFolderChoiceImpl _value,
      $Res Function(_$FoldableSelectionFolderChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
  }) {
    return _then(_$FoldableSelectionFolderChoiceImpl(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoldableSelectionFolderChoiceImpl
    implements _FoldableSelectionFolderChoice {
  _$FoldableSelectionFolderChoiceImpl(
      {required this.variableName, final String? $type})
      : $type = $type ?? 'folderChoice';

  factory _$FoldableSelectionFolderChoiceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FoldableSelectionFolderChoiceImplFromJson(json);

  @override
  final String variableName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FoldableSelection.folderChoice(variableName: $variableName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoldableSelectionFolderChoiceImpl &&
            (identical(other.variableName, variableName) ||
                other.variableName == variableName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, variableName);

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoldableSelectionFolderChoiceImplCopyWith<
          _$FoldableSelectionFolderChoiceImpl>
      get copyWith => __$$FoldableSelectionFolderChoiceImplCopyWithImpl<
          _$FoldableSelectionFolderChoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) folderText,
    required TResult Function(String variableName) folderBoolean,
    required TResult Function(String variableName) folderChoice,
    required TResult Function(String variableName) folderItemsModel,
    required TResult Function(String variableName) folderModel,
  }) {
    return folderChoice(variableName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? folderText,
    TResult? Function(String variableName)? folderBoolean,
    TResult? Function(String variableName)? folderChoice,
    TResult? Function(String variableName)? folderItemsModel,
    TResult? Function(String variableName)? folderModel,
  }) {
    return folderChoice?.call(variableName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? folderText,
    TResult Function(String variableName)? folderBoolean,
    TResult Function(String variableName)? folderChoice,
    TResult Function(String variableName)? folderItemsModel,
    TResult Function(String variableName)? folderModel,
    required TResult orElse(),
  }) {
    if (folderChoice != null) {
      return folderChoice(variableName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoldableSelectionFolderText value) folderText,
    required TResult Function(_FoldableSelectionFolderBoolean value)
        folderBoolean,
    required TResult Function(_FoldableSelectionFolderChoice value)
        folderChoice,
    required TResult Function(_FoldableSelectionFolderItemsModel value)
        folderItemsModel,
    required TResult Function(_FoldableSelectionFolderModel value) folderModel,
  }) {
    return folderChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoldableSelectionFolderText value)? folderText,
    TResult? Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult? Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult? Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult? Function(_FoldableSelectionFolderModel value)? folderModel,
  }) {
    return folderChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoldableSelectionFolderText value)? folderText,
    TResult Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult Function(_FoldableSelectionFolderModel value)? folderModel,
    required TResult orElse(),
  }) {
    if (folderChoice != null) {
      return folderChoice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FoldableSelectionFolderChoiceImplToJson(
      this,
    );
  }
}

abstract class _FoldableSelectionFolderChoice implements FoldableSelection {
  factory _FoldableSelectionFolderChoice({required final String variableName}) =
      _$FoldableSelectionFolderChoiceImpl;

  factory _FoldableSelectionFolderChoice.fromJson(Map<String, dynamic> json) =
      _$FoldableSelectionFolderChoiceImpl.fromJson;

  @override
  String get variableName;

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoldableSelectionFolderChoiceImplCopyWith<
          _$FoldableSelectionFolderChoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FoldableSelectionFolderItemsModelImplCopyWith<$Res>
    implements $FoldableSelectionCopyWith<$Res> {
  factory _$$FoldableSelectionFolderItemsModelImplCopyWith(
          _$FoldableSelectionFolderItemsModelImpl value,
          $Res Function(_$FoldableSelectionFolderItemsModelImpl) then) =
      __$$FoldableSelectionFolderItemsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String variableName});
}

/// @nodoc
class __$$FoldableSelectionFolderItemsModelImplCopyWithImpl<$Res>
    extends _$FoldableSelectionCopyWithImpl<$Res,
        _$FoldableSelectionFolderItemsModelImpl>
    implements _$$FoldableSelectionFolderItemsModelImplCopyWith<$Res> {
  __$$FoldableSelectionFolderItemsModelImplCopyWithImpl(
      _$FoldableSelectionFolderItemsModelImpl _value,
      $Res Function(_$FoldableSelectionFolderItemsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
  }) {
    return _then(_$FoldableSelectionFolderItemsModelImpl(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoldableSelectionFolderItemsModelImpl
    implements _FoldableSelectionFolderItemsModel {
  _$FoldableSelectionFolderItemsModelImpl(
      {required this.variableName, final String? $type})
      : $type = $type ?? 'folderItemsModel';

  factory _$FoldableSelectionFolderItemsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FoldableSelectionFolderItemsModelImplFromJson(json);

  @override
  final String variableName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FoldableSelection.folderItemsModel(variableName: $variableName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoldableSelectionFolderItemsModelImpl &&
            (identical(other.variableName, variableName) ||
                other.variableName == variableName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, variableName);

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoldableSelectionFolderItemsModelImplCopyWith<
          _$FoldableSelectionFolderItemsModelImpl>
      get copyWith => __$$FoldableSelectionFolderItemsModelImplCopyWithImpl<
          _$FoldableSelectionFolderItemsModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) folderText,
    required TResult Function(String variableName) folderBoolean,
    required TResult Function(String variableName) folderChoice,
    required TResult Function(String variableName) folderItemsModel,
    required TResult Function(String variableName) folderModel,
  }) {
    return folderItemsModel(variableName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? folderText,
    TResult? Function(String variableName)? folderBoolean,
    TResult? Function(String variableName)? folderChoice,
    TResult? Function(String variableName)? folderItemsModel,
    TResult? Function(String variableName)? folderModel,
  }) {
    return folderItemsModel?.call(variableName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? folderText,
    TResult Function(String variableName)? folderBoolean,
    TResult Function(String variableName)? folderChoice,
    TResult Function(String variableName)? folderItemsModel,
    TResult Function(String variableName)? folderModel,
    required TResult orElse(),
  }) {
    if (folderItemsModel != null) {
      return folderItemsModel(variableName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoldableSelectionFolderText value) folderText,
    required TResult Function(_FoldableSelectionFolderBoolean value)
        folderBoolean,
    required TResult Function(_FoldableSelectionFolderChoice value)
        folderChoice,
    required TResult Function(_FoldableSelectionFolderItemsModel value)
        folderItemsModel,
    required TResult Function(_FoldableSelectionFolderModel value) folderModel,
  }) {
    return folderItemsModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoldableSelectionFolderText value)? folderText,
    TResult? Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult? Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult? Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult? Function(_FoldableSelectionFolderModel value)? folderModel,
  }) {
    return folderItemsModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoldableSelectionFolderText value)? folderText,
    TResult Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult Function(_FoldableSelectionFolderModel value)? folderModel,
    required TResult orElse(),
  }) {
    if (folderItemsModel != null) {
      return folderItemsModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FoldableSelectionFolderItemsModelImplToJson(
      this,
    );
  }
}

abstract class _FoldableSelectionFolderItemsModel implements FoldableSelection {
  factory _FoldableSelectionFolderItemsModel(
          {required final String variableName}) =
      _$FoldableSelectionFolderItemsModelImpl;

  factory _FoldableSelectionFolderItemsModel.fromJson(
          Map<String, dynamic> json) =
      _$FoldableSelectionFolderItemsModelImpl.fromJson;

  @override
  String get variableName;

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoldableSelectionFolderItemsModelImplCopyWith<
          _$FoldableSelectionFolderItemsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FoldableSelectionFolderModelImplCopyWith<$Res>
    implements $FoldableSelectionCopyWith<$Res> {
  factory _$$FoldableSelectionFolderModelImplCopyWith(
          _$FoldableSelectionFolderModelImpl value,
          $Res Function(_$FoldableSelectionFolderModelImpl) then) =
      __$$FoldableSelectionFolderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String variableName});
}

/// @nodoc
class __$$FoldableSelectionFolderModelImplCopyWithImpl<$Res>
    extends _$FoldableSelectionCopyWithImpl<$Res,
        _$FoldableSelectionFolderModelImpl>
    implements _$$FoldableSelectionFolderModelImplCopyWith<$Res> {
  __$$FoldableSelectionFolderModelImplCopyWithImpl(
      _$FoldableSelectionFolderModelImpl _value,
      $Res Function(_$FoldableSelectionFolderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
  }) {
    return _then(_$FoldableSelectionFolderModelImpl(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoldableSelectionFolderModelImpl
    implements _FoldableSelectionFolderModel {
  _$FoldableSelectionFolderModelImpl(
      {required this.variableName, final String? $type})
      : $type = $type ?? 'folderModel';

  factory _$FoldableSelectionFolderModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FoldableSelectionFolderModelImplFromJson(json);

  @override
  final String variableName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FoldableSelection.folderModel(variableName: $variableName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoldableSelectionFolderModelImpl &&
            (identical(other.variableName, variableName) ||
                other.variableName == variableName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, variableName);

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoldableSelectionFolderModelImplCopyWith<
          _$FoldableSelectionFolderModelImpl>
      get copyWith => __$$FoldableSelectionFolderModelImplCopyWithImpl<
          _$FoldableSelectionFolderModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) folderText,
    required TResult Function(String variableName) folderBoolean,
    required TResult Function(String variableName) folderChoice,
    required TResult Function(String variableName) folderItemsModel,
    required TResult Function(String variableName) folderModel,
  }) {
    return folderModel(variableName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? folderText,
    TResult? Function(String variableName)? folderBoolean,
    TResult? Function(String variableName)? folderChoice,
    TResult? Function(String variableName)? folderItemsModel,
    TResult? Function(String variableName)? folderModel,
  }) {
    return folderModel?.call(variableName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? folderText,
    TResult Function(String variableName)? folderBoolean,
    TResult Function(String variableName)? folderChoice,
    TResult Function(String variableName)? folderItemsModel,
    TResult Function(String variableName)? folderModel,
    required TResult orElse(),
  }) {
    if (folderModel != null) {
      return folderModel(variableName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoldableSelectionFolderText value) folderText,
    required TResult Function(_FoldableSelectionFolderBoolean value)
        folderBoolean,
    required TResult Function(_FoldableSelectionFolderChoice value)
        folderChoice,
    required TResult Function(_FoldableSelectionFolderItemsModel value)
        folderItemsModel,
    required TResult Function(_FoldableSelectionFolderModel value) folderModel,
  }) {
    return folderModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoldableSelectionFolderText value)? folderText,
    TResult? Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult? Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult? Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult? Function(_FoldableSelectionFolderModel value)? folderModel,
  }) {
    return folderModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoldableSelectionFolderText value)? folderText,
    TResult Function(_FoldableSelectionFolderBoolean value)? folderBoolean,
    TResult Function(_FoldableSelectionFolderChoice value)? folderChoice,
    TResult Function(_FoldableSelectionFolderItemsModel value)?
        folderItemsModel,
    TResult Function(_FoldableSelectionFolderModel value)? folderModel,
    required TResult orElse(),
  }) {
    if (folderModel != null) {
      return folderModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FoldableSelectionFolderModelImplToJson(
      this,
    );
  }
}

abstract class _FoldableSelectionFolderModel implements FoldableSelection {
  factory _FoldableSelectionFolderModel({required final String variableName}) =
      _$FoldableSelectionFolderModelImpl;

  factory _FoldableSelectionFolderModel.fromJson(Map<String, dynamic> json) =
      _$FoldableSelectionFolderModelImpl.fromJson;

  @override
  String get variableName;

  /// Create a copy of FoldableSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoldableSelectionFolderModelImplCopyWith<
          _$FoldableSelectionFolderModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
