// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageFormData _$PackageFormDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'creatingFromZero':
      return _PackageFormDataCreatingFromZero.fromJson(json);
    case 'editingMyPackage':
      return _PackageFormDataEditingMyPackage.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PackageFormData',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PackageFormData {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description)
        creatingFromZero,
    required TResult Function(
            String title, String description, PackageInfo previousInfoPackage)
        editingMyPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description)? creatingFromZero,
    TResult? Function(
            String title, String description, PackageInfo previousInfoPackage)?
        editingMyPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description)? creatingFromZero,
    TResult Function(
            String title, String description, PackageInfo previousInfoPackage)?
        editingMyPackage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackageFormDataCreatingFromZero value)
        creatingFromZero,
    required TResult Function(_PackageFormDataEditingMyPackage value)
        editingMyPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormDataCreatingFromZero value)? creatingFromZero,
    TResult? Function(_PackageFormDataEditingMyPackage value)? editingMyPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormDataCreatingFromZero value)? creatingFromZero,
    TResult Function(_PackageFormDataEditingMyPackage value)? editingMyPackage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PackageFormData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageFormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageFormDataCopyWith<PackageFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageFormDataCopyWith<$Res> {
  factory $PackageFormDataCopyWith(
          PackageFormData value, $Res Function(PackageFormData) then) =
      _$PackageFormDataCopyWithImpl<$Res, PackageFormData>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$PackageFormDataCopyWithImpl<$Res, $Val extends PackageFormData>
    implements $PackageFormDataCopyWith<$Res> {
  _$PackageFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageFormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageFormDataCreatingFromZeroImplCopyWith<$Res>
    implements $PackageFormDataCopyWith<$Res> {
  factory _$$PackageFormDataCreatingFromZeroImplCopyWith(
          _$PackageFormDataCreatingFromZeroImpl value,
          $Res Function(_$PackageFormDataCreatingFromZeroImpl) then) =
      __$$PackageFormDataCreatingFromZeroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$PackageFormDataCreatingFromZeroImplCopyWithImpl<$Res>
    extends _$PackageFormDataCopyWithImpl<$Res,
        _$PackageFormDataCreatingFromZeroImpl>
    implements _$$PackageFormDataCreatingFromZeroImplCopyWith<$Res> {
  __$$PackageFormDataCreatingFromZeroImplCopyWithImpl(
      _$PackageFormDataCreatingFromZeroImpl _value,
      $Res Function(_$PackageFormDataCreatingFromZeroImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageFormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$PackageFormDataCreatingFromZeroImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageFormDataCreatingFromZeroImpl
    implements _PackageFormDataCreatingFromZero {
  _$PackageFormDataCreatingFromZeroImpl(
      {required this.title, required this.description, final String? $type})
      : $type = $type ?? 'creatingFromZero';

  factory _$PackageFormDataCreatingFromZeroImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackageFormDataCreatingFromZeroImplFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PackageFormData.creatingFromZero(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageFormDataCreatingFromZeroImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  /// Create a copy of PackageFormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageFormDataCreatingFromZeroImplCopyWith<
          _$PackageFormDataCreatingFromZeroImpl>
      get copyWith => __$$PackageFormDataCreatingFromZeroImplCopyWithImpl<
          _$PackageFormDataCreatingFromZeroImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description)
        creatingFromZero,
    required TResult Function(
            String title, String description, PackageInfo previousInfoPackage)
        editingMyPackage,
  }) {
    return creatingFromZero(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description)? creatingFromZero,
    TResult? Function(
            String title, String description, PackageInfo previousInfoPackage)?
        editingMyPackage,
  }) {
    return creatingFromZero?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description)? creatingFromZero,
    TResult Function(
            String title, String description, PackageInfo previousInfoPackage)?
        editingMyPackage,
    required TResult orElse(),
  }) {
    if (creatingFromZero != null) {
      return creatingFromZero(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackageFormDataCreatingFromZero value)
        creatingFromZero,
    required TResult Function(_PackageFormDataEditingMyPackage value)
        editingMyPackage,
  }) {
    return creatingFromZero(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormDataCreatingFromZero value)? creatingFromZero,
    TResult? Function(_PackageFormDataEditingMyPackage value)? editingMyPackage,
  }) {
    return creatingFromZero?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormDataCreatingFromZero value)? creatingFromZero,
    TResult Function(_PackageFormDataEditingMyPackage value)? editingMyPackage,
    required TResult orElse(),
  }) {
    if (creatingFromZero != null) {
      return creatingFromZero(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageFormDataCreatingFromZeroImplToJson(
      this,
    );
  }
}

abstract class _PackageFormDataCreatingFromZero implements PackageFormData {
  factory _PackageFormDataCreatingFromZero(
          {required final String title, required final String description}) =
      _$PackageFormDataCreatingFromZeroImpl;

  factory _PackageFormDataCreatingFromZero.fromJson(Map<String, dynamic> json) =
      _$PackageFormDataCreatingFromZeroImpl.fromJson;

  @override
  String get title;
  @override
  String get description;

  /// Create a copy of PackageFormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageFormDataCreatingFromZeroImplCopyWith<
          _$PackageFormDataCreatingFromZeroImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PackageFormDataEditingMyPackageImplCopyWith<$Res>
    implements $PackageFormDataCopyWith<$Res> {
  factory _$$PackageFormDataEditingMyPackageImplCopyWith(
          _$PackageFormDataEditingMyPackageImpl value,
          $Res Function(_$PackageFormDataEditingMyPackageImpl) then) =
      __$$PackageFormDataEditingMyPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String description, PackageInfo previousInfoPackage});

  $PackageInfoCopyWith<$Res> get previousInfoPackage;
}

/// @nodoc
class __$$PackageFormDataEditingMyPackageImplCopyWithImpl<$Res>
    extends _$PackageFormDataCopyWithImpl<$Res,
        _$PackageFormDataEditingMyPackageImpl>
    implements _$$PackageFormDataEditingMyPackageImplCopyWith<$Res> {
  __$$PackageFormDataEditingMyPackageImplCopyWithImpl(
      _$PackageFormDataEditingMyPackageImpl _value,
      $Res Function(_$PackageFormDataEditingMyPackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageFormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? previousInfoPackage = null,
  }) {
    return _then(_$PackageFormDataEditingMyPackageImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      previousInfoPackage: null == previousInfoPackage
          ? _value.previousInfoPackage
          : previousInfoPackage // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
    ));
  }

  /// Create a copy of PackageFormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageInfoCopyWith<$Res> get previousInfoPackage {
    return $PackageInfoCopyWith<$Res>(_value.previousInfoPackage, (value) {
      return _then(_value.copyWith(previousInfoPackage: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageFormDataEditingMyPackageImpl
    implements _PackageFormDataEditingMyPackage {
  _$PackageFormDataEditingMyPackageImpl(
      {required this.title,
      required this.description,
      required this.previousInfoPackage,
      final String? $type})
      : $type = $type ?? 'editingMyPackage';

  factory _$PackageFormDataEditingMyPackageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackageFormDataEditingMyPackageImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final PackageInfo previousInfoPackage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PackageFormData.editingMyPackage(title: $title, description: $description, previousInfoPackage: $previousInfoPackage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageFormDataEditingMyPackageImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.previousInfoPackage, previousInfoPackage) ||
                other.previousInfoPackage == previousInfoPackage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, previousInfoPackage);

  /// Create a copy of PackageFormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageFormDataEditingMyPackageImplCopyWith<
          _$PackageFormDataEditingMyPackageImpl>
      get copyWith => __$$PackageFormDataEditingMyPackageImplCopyWithImpl<
          _$PackageFormDataEditingMyPackageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description)
        creatingFromZero,
    required TResult Function(
            String title, String description, PackageInfo previousInfoPackage)
        editingMyPackage,
  }) {
    return editingMyPackage(title, description, previousInfoPackage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description)? creatingFromZero,
    TResult? Function(
            String title, String description, PackageInfo previousInfoPackage)?
        editingMyPackage,
  }) {
    return editingMyPackage?.call(title, description, previousInfoPackage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description)? creatingFromZero,
    TResult Function(
            String title, String description, PackageInfo previousInfoPackage)?
        editingMyPackage,
    required TResult orElse(),
  }) {
    if (editingMyPackage != null) {
      return editingMyPackage(title, description, previousInfoPackage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackageFormDataCreatingFromZero value)
        creatingFromZero,
    required TResult Function(_PackageFormDataEditingMyPackage value)
        editingMyPackage,
  }) {
    return editingMyPackage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormDataCreatingFromZero value)? creatingFromZero,
    TResult? Function(_PackageFormDataEditingMyPackage value)? editingMyPackage,
  }) {
    return editingMyPackage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormDataCreatingFromZero value)? creatingFromZero,
    TResult Function(_PackageFormDataEditingMyPackage value)? editingMyPackage,
    required TResult orElse(),
  }) {
    if (editingMyPackage != null) {
      return editingMyPackage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageFormDataEditingMyPackageImplToJson(
      this,
    );
  }
}

abstract class _PackageFormDataEditingMyPackage implements PackageFormData {
  factory _PackageFormDataEditingMyPackage(
          {required final String title,
          required final String description,
          required final PackageInfo previousInfoPackage}) =
      _$PackageFormDataEditingMyPackageImpl;

  factory _PackageFormDataEditingMyPackage.fromJson(Map<String, dynamic> json) =
      _$PackageFormDataEditingMyPackageImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  PackageInfo get previousInfoPackage;

  /// Create a copy of PackageFormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageFormDataEditingMyPackageImplCopyWith<
          _$PackageFormDataEditingMyPackageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
