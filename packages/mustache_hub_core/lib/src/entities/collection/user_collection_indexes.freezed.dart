// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_collection_indexes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserCollectionIndexes _$UserCollectionIndexesFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'folder':
      return UserCollectionIndexesFolder.fromJson(json);
    case 'file':
      return UserCollectionIndexesFile.fromJson(json);
    case 'root':
      return UserCollectionIndexesRoot.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'UserCollectionIndexes',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserCollectionIndexes {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description,
            List<UserCollectionIndexes> children)
        folder,
    required TResult Function(String templateUuid) file,
    required TResult Function(List<UserCollectionIndexes> children) root,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description,
            List<UserCollectionIndexes> children)?
        folder,
    TResult? Function(String templateUuid)? file,
    TResult? Function(List<UserCollectionIndexes> children)? root,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description,
            List<UserCollectionIndexes> children)?
        folder,
    TResult Function(String templateUuid)? file,
    TResult Function(List<UserCollectionIndexes> children)? root,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCollectionIndexesFolder value) folder,
    required TResult Function(UserCollectionIndexesFile value) file,
    required TResult Function(UserCollectionIndexesRoot value) root,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCollectionIndexesFolder value)? folder,
    TResult? Function(UserCollectionIndexesFile value)? file,
    TResult? Function(UserCollectionIndexesRoot value)? root,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCollectionIndexesFolder value)? folder,
    TResult Function(UserCollectionIndexesFile value)? file,
    TResult Function(UserCollectionIndexesRoot value)? root,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UserCollectionIndexes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCollectionIndexesCopyWith<$Res> {
  factory $UserCollectionIndexesCopyWith(UserCollectionIndexes value,
          $Res Function(UserCollectionIndexes) then) =
      _$UserCollectionIndexesCopyWithImpl<$Res, UserCollectionIndexes>;
}

/// @nodoc
class _$UserCollectionIndexesCopyWithImpl<$Res,
        $Val extends UserCollectionIndexes>
    implements $UserCollectionIndexesCopyWith<$Res> {
  _$UserCollectionIndexesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCollectionIndexes
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserCollectionIndexesFolderImplCopyWith<$Res> {
  factory _$$UserCollectionIndexesFolderImplCopyWith(
          _$UserCollectionIndexesFolderImpl value,
          $Res Function(_$UserCollectionIndexesFolderImpl) then) =
      __$$UserCollectionIndexesFolderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name, String description, List<UserCollectionIndexes> children});
}

/// @nodoc
class __$$UserCollectionIndexesFolderImplCopyWithImpl<$Res>
    extends _$UserCollectionIndexesCopyWithImpl<$Res,
        _$UserCollectionIndexesFolderImpl>
    implements _$$UserCollectionIndexesFolderImplCopyWith<$Res> {
  __$$UserCollectionIndexesFolderImplCopyWithImpl(
      _$UserCollectionIndexesFolderImpl _value,
      $Res Function(_$UserCollectionIndexesFolderImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCollectionIndexes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? children = null,
  }) {
    return _then(_$UserCollectionIndexesFolderImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<UserCollectionIndexes>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserCollectionIndexesFolderImpl implements UserCollectionIndexesFolder {
  _$UserCollectionIndexesFolderImpl(
      {required this.name,
      required this.description,
      required final List<UserCollectionIndexes> children,
      final String? $type})
      : _children = children,
        $type = $type ?? 'folder';

  factory _$UserCollectionIndexesFolderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserCollectionIndexesFolderImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  final List<UserCollectionIndexes> _children;
  @override
  List<UserCollectionIndexes> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserCollectionIndexes.folder(name: $name, description: $description, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCollectionIndexesFolderImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_children));

  /// Create a copy of UserCollectionIndexes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCollectionIndexesFolderImplCopyWith<_$UserCollectionIndexesFolderImpl>
      get copyWith => __$$UserCollectionIndexesFolderImplCopyWithImpl<
          _$UserCollectionIndexesFolderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description,
            List<UserCollectionIndexes> children)
        folder,
    required TResult Function(String templateUuid) file,
    required TResult Function(List<UserCollectionIndexes> children) root,
  }) {
    return folder(name, description, children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description,
            List<UserCollectionIndexes> children)?
        folder,
    TResult? Function(String templateUuid)? file,
    TResult? Function(List<UserCollectionIndexes> children)? root,
  }) {
    return folder?.call(name, description, children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description,
            List<UserCollectionIndexes> children)?
        folder,
    TResult Function(String templateUuid)? file,
    TResult Function(List<UserCollectionIndexes> children)? root,
    required TResult orElse(),
  }) {
    if (folder != null) {
      return folder(name, description, children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCollectionIndexesFolder value) folder,
    required TResult Function(UserCollectionIndexesFile value) file,
    required TResult Function(UserCollectionIndexesRoot value) root,
  }) {
    return folder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCollectionIndexesFolder value)? folder,
    TResult? Function(UserCollectionIndexesFile value)? file,
    TResult? Function(UserCollectionIndexesRoot value)? root,
  }) {
    return folder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCollectionIndexesFolder value)? folder,
    TResult Function(UserCollectionIndexesFile value)? file,
    TResult Function(UserCollectionIndexesRoot value)? root,
    required TResult orElse(),
  }) {
    if (folder != null) {
      return folder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionIndexesFolderImplToJson(
      this,
    );
  }
}

abstract class UserCollectionIndexesFolder implements UserCollectionIndexes {
  factory UserCollectionIndexesFolder(
          {required final String name,
          required final String description,
          required final List<UserCollectionIndexes> children}) =
      _$UserCollectionIndexesFolderImpl;

  factory UserCollectionIndexesFolder.fromJson(Map<String, dynamic> json) =
      _$UserCollectionIndexesFolderImpl.fromJson;

  String get name;
  String get description;
  List<UserCollectionIndexes> get children;

  /// Create a copy of UserCollectionIndexes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCollectionIndexesFolderImplCopyWith<_$UserCollectionIndexesFolderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCollectionIndexesFileImplCopyWith<$Res> {
  factory _$$UserCollectionIndexesFileImplCopyWith(
          _$UserCollectionIndexesFileImpl value,
          $Res Function(_$UserCollectionIndexesFileImpl) then) =
      __$$UserCollectionIndexesFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String templateUuid});
}

/// @nodoc
class __$$UserCollectionIndexesFileImplCopyWithImpl<$Res>
    extends _$UserCollectionIndexesCopyWithImpl<$Res,
        _$UserCollectionIndexesFileImpl>
    implements _$$UserCollectionIndexesFileImplCopyWith<$Res> {
  __$$UserCollectionIndexesFileImplCopyWithImpl(
      _$UserCollectionIndexesFileImpl _value,
      $Res Function(_$UserCollectionIndexesFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCollectionIndexes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateUuid = null,
  }) {
    return _then(_$UserCollectionIndexesFileImpl(
      templateUuid: null == templateUuid
          ? _value.templateUuid
          : templateUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserCollectionIndexesFileImpl implements UserCollectionIndexesFile {
  _$UserCollectionIndexesFileImpl(
      {required this.templateUuid, final String? $type})
      : $type = $type ?? 'file';

  factory _$UserCollectionIndexesFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCollectionIndexesFileImplFromJson(json);

  @override
  final String templateUuid;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserCollectionIndexes.file(templateUuid: $templateUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCollectionIndexesFileImpl &&
            (identical(other.templateUuid, templateUuid) ||
                other.templateUuid == templateUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, templateUuid);

  /// Create a copy of UserCollectionIndexes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCollectionIndexesFileImplCopyWith<_$UserCollectionIndexesFileImpl>
      get copyWith => __$$UserCollectionIndexesFileImplCopyWithImpl<
          _$UserCollectionIndexesFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description,
            List<UserCollectionIndexes> children)
        folder,
    required TResult Function(String templateUuid) file,
    required TResult Function(List<UserCollectionIndexes> children) root,
  }) {
    return file(templateUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description,
            List<UserCollectionIndexes> children)?
        folder,
    TResult? Function(String templateUuid)? file,
    TResult? Function(List<UserCollectionIndexes> children)? root,
  }) {
    return file?.call(templateUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description,
            List<UserCollectionIndexes> children)?
        folder,
    TResult Function(String templateUuid)? file,
    TResult Function(List<UserCollectionIndexes> children)? root,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(templateUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCollectionIndexesFolder value) folder,
    required TResult Function(UserCollectionIndexesFile value) file,
    required TResult Function(UserCollectionIndexesRoot value) root,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCollectionIndexesFolder value)? folder,
    TResult? Function(UserCollectionIndexesFile value)? file,
    TResult? Function(UserCollectionIndexesRoot value)? root,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCollectionIndexesFolder value)? folder,
    TResult Function(UserCollectionIndexesFile value)? file,
    TResult Function(UserCollectionIndexesRoot value)? root,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionIndexesFileImplToJson(
      this,
    );
  }
}

abstract class UserCollectionIndexesFile implements UserCollectionIndexes {
  factory UserCollectionIndexesFile({required final String templateUuid}) =
      _$UserCollectionIndexesFileImpl;

  factory UserCollectionIndexesFile.fromJson(Map<String, dynamic> json) =
      _$UserCollectionIndexesFileImpl.fromJson;

  String get templateUuid;

  /// Create a copy of UserCollectionIndexes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCollectionIndexesFileImplCopyWith<_$UserCollectionIndexesFileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCollectionIndexesRootImplCopyWith<$Res> {
  factory _$$UserCollectionIndexesRootImplCopyWith(
          _$UserCollectionIndexesRootImpl value,
          $Res Function(_$UserCollectionIndexesRootImpl) then) =
      __$$UserCollectionIndexesRootImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserCollectionIndexes> children});
}

/// @nodoc
class __$$UserCollectionIndexesRootImplCopyWithImpl<$Res>
    extends _$UserCollectionIndexesCopyWithImpl<$Res,
        _$UserCollectionIndexesRootImpl>
    implements _$$UserCollectionIndexesRootImplCopyWith<$Res> {
  __$$UserCollectionIndexesRootImplCopyWithImpl(
      _$UserCollectionIndexesRootImpl _value,
      $Res Function(_$UserCollectionIndexesRootImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCollectionIndexes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$UserCollectionIndexesRootImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<UserCollectionIndexes>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserCollectionIndexesRootImpl implements UserCollectionIndexesRoot {
  _$UserCollectionIndexesRootImpl(
      {required final List<UserCollectionIndexes> children,
      final String? $type})
      : _children = children,
        $type = $type ?? 'root';

  factory _$UserCollectionIndexesRootImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCollectionIndexesRootImplFromJson(json);

  final List<UserCollectionIndexes> _children;
  @override
  List<UserCollectionIndexes> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserCollectionIndexes.root(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCollectionIndexesRootImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  /// Create a copy of UserCollectionIndexes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCollectionIndexesRootImplCopyWith<_$UserCollectionIndexesRootImpl>
      get copyWith => __$$UserCollectionIndexesRootImplCopyWithImpl<
          _$UserCollectionIndexesRootImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description,
            List<UserCollectionIndexes> children)
        folder,
    required TResult Function(String templateUuid) file,
    required TResult Function(List<UserCollectionIndexes> children) root,
  }) {
    return root(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description,
            List<UserCollectionIndexes> children)?
        folder,
    TResult? Function(String templateUuid)? file,
    TResult? Function(List<UserCollectionIndexes> children)? root,
  }) {
    return root?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description,
            List<UserCollectionIndexes> children)?
        folder,
    TResult Function(String templateUuid)? file,
    TResult Function(List<UserCollectionIndexes> children)? root,
    required TResult orElse(),
  }) {
    if (root != null) {
      return root(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCollectionIndexesFolder value) folder,
    required TResult Function(UserCollectionIndexesFile value) file,
    required TResult Function(UserCollectionIndexesRoot value) root,
  }) {
    return root(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCollectionIndexesFolder value)? folder,
    TResult? Function(UserCollectionIndexesFile value)? file,
    TResult? Function(UserCollectionIndexesRoot value)? root,
  }) {
    return root?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCollectionIndexesFolder value)? folder,
    TResult Function(UserCollectionIndexesFile value)? file,
    TResult Function(UserCollectionIndexesRoot value)? root,
    required TResult orElse(),
  }) {
    if (root != null) {
      return root(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionIndexesRootImplToJson(
      this,
    );
  }
}

abstract class UserCollectionIndexesRoot implements UserCollectionIndexes {
  factory UserCollectionIndexesRoot(
          {required final List<UserCollectionIndexes> children}) =
      _$UserCollectionIndexesRootImpl;

  factory UserCollectionIndexesRoot.fromJson(Map<String, dynamic> json) =
      _$UserCollectionIndexesRootImpl.fromJson;

  List<UserCollectionIndexes> get children;

  /// Create a copy of UserCollectionIndexes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCollectionIndexesRootImplCopyWith<_$UserCollectionIndexesRootImpl>
      get copyWith => throw _privateConstructorUsedError;
}
