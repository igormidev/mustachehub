// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCollection _$UserCollectionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'folder':
      return UserCollectionFolder.fromJson(json);
    case 'file':
      return UserCollectionFile.fromJson(json);
    case 'root':
      return UserCollectionRoot.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserCollection',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserCollection {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description, String uuid,
            List<UserCollection> children)
        folder,
    required TResult Function(Template template) file,
    required TResult Function(List<UserCollection> children) root,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, String uuid,
            List<UserCollection> children)?
        folder,
    TResult? Function(Template template)? file,
    TResult? Function(List<UserCollection> children)? root,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, String uuid,
            List<UserCollection> children)?
        folder,
    TResult Function(Template template)? file,
    TResult Function(List<UserCollection> children)? root,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCollectionFolder value) folder,
    required TResult Function(UserCollectionFile value) file,
    required TResult Function(UserCollectionRoot value) root,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCollectionFolder value)? folder,
    TResult? Function(UserCollectionFile value)? file,
    TResult? Function(UserCollectionRoot value)? root,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCollectionFolder value)? folder,
    TResult Function(UserCollectionFile value)? file,
    TResult Function(UserCollectionRoot value)? root,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCollectionCopyWith<$Res> {
  factory $UserCollectionCopyWith(
          UserCollection value, $Res Function(UserCollection) then) =
      _$UserCollectionCopyWithImpl<$Res, UserCollection>;
}

/// @nodoc
class _$UserCollectionCopyWithImpl<$Res, $Val extends UserCollection>
    implements $UserCollectionCopyWith<$Res> {
  _$UserCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserCollectionFolderImplCopyWith<$Res> {
  factory _$$UserCollectionFolderImplCopyWith(_$UserCollectionFolderImpl value,
          $Res Function(_$UserCollectionFolderImpl) then) =
      __$$UserCollectionFolderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String description,
      String uuid,
      List<UserCollection> children});
}

/// @nodoc
class __$$UserCollectionFolderImplCopyWithImpl<$Res>
    extends _$UserCollectionCopyWithImpl<$Res, _$UserCollectionFolderImpl>
    implements _$$UserCollectionFolderImplCopyWith<$Res> {
  __$$UserCollectionFolderImplCopyWithImpl(_$UserCollectionFolderImpl _value,
      $Res Function(_$UserCollectionFolderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? uuid = null,
    Object? children = null,
  }) {
    return _then(_$UserCollectionFolderImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<UserCollection>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCollectionFolderImpl implements UserCollectionFolder {
  _$UserCollectionFolderImpl(
      {required this.name,
      required this.description,
      required this.uuid,
      required final List<UserCollection> children,
      final String? $type})
      : _children = children,
        $type = $type ?? 'folder';

  factory _$UserCollectionFolderImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCollectionFolderImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String uuid;
  final List<UserCollection> _children;
  @override
  List<UserCollection> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserCollection.folder(name: $name, description: $description, uuid: $uuid, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCollectionFolderImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, uuid,
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCollectionFolderImplCopyWith<_$UserCollectionFolderImpl>
      get copyWith =>
          __$$UserCollectionFolderImplCopyWithImpl<_$UserCollectionFolderImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description, String uuid,
            List<UserCollection> children)
        folder,
    required TResult Function(Template template) file,
    required TResult Function(List<UserCollection> children) root,
  }) {
    return folder(name, description, uuid, children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, String uuid,
            List<UserCollection> children)?
        folder,
    TResult? Function(Template template)? file,
    TResult? Function(List<UserCollection> children)? root,
  }) {
    return folder?.call(name, description, uuid, children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, String uuid,
            List<UserCollection> children)?
        folder,
    TResult Function(Template template)? file,
    TResult Function(List<UserCollection> children)? root,
    required TResult orElse(),
  }) {
    if (folder != null) {
      return folder(name, description, uuid, children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCollectionFolder value) folder,
    required TResult Function(UserCollectionFile value) file,
    required TResult Function(UserCollectionRoot value) root,
  }) {
    return folder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCollectionFolder value)? folder,
    TResult? Function(UserCollectionFile value)? file,
    TResult? Function(UserCollectionRoot value)? root,
  }) {
    return folder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCollectionFolder value)? folder,
    TResult Function(UserCollectionFile value)? file,
    TResult Function(UserCollectionRoot value)? root,
    required TResult orElse(),
  }) {
    if (folder != null) {
      return folder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionFolderImplToJson(
      this,
    );
  }
}

abstract class UserCollectionFolder implements UserCollection {
  factory UserCollectionFolder(
          {required final String name,
          required final String description,
          required final String uuid,
          required final List<UserCollection> children}) =
      _$UserCollectionFolderImpl;

  factory UserCollectionFolder.fromJson(Map<String, dynamic> json) =
      _$UserCollectionFolderImpl.fromJson;

  String get name;
  String get description;
  String get uuid;
  List<UserCollection> get children;
  @JsonKey(ignore: true)
  _$$UserCollectionFolderImplCopyWith<_$UserCollectionFolderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCollectionFileImplCopyWith<$Res> {
  factory _$$UserCollectionFileImplCopyWith(_$UserCollectionFileImpl value,
          $Res Function(_$UserCollectionFileImpl) then) =
      __$$UserCollectionFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Template template});

  $TemplateCopyWith<$Res> get template;
}

/// @nodoc
class __$$UserCollectionFileImplCopyWithImpl<$Res>
    extends _$UserCollectionCopyWithImpl<$Res, _$UserCollectionFileImpl>
    implements _$$UserCollectionFileImplCopyWith<$Res> {
  __$$UserCollectionFileImplCopyWithImpl(_$UserCollectionFileImpl _value,
      $Res Function(_$UserCollectionFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = null,
  }) {
    return _then(_$UserCollectionFileImpl(
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as Template,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TemplateCopyWith<$Res> get template {
    return $TemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCollectionFileImpl implements UserCollectionFile {
  _$UserCollectionFileImpl({required this.template, final String? $type})
      : $type = $type ?? 'file';

  factory _$UserCollectionFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCollectionFileImplFromJson(json);

  @override
  final Template template;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserCollection.file(template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCollectionFileImpl &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCollectionFileImplCopyWith<_$UserCollectionFileImpl> get copyWith =>
      __$$UserCollectionFileImplCopyWithImpl<_$UserCollectionFileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description, String uuid,
            List<UserCollection> children)
        folder,
    required TResult Function(Template template) file,
    required TResult Function(List<UserCollection> children) root,
  }) {
    return file(template);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, String uuid,
            List<UserCollection> children)?
        folder,
    TResult? Function(Template template)? file,
    TResult? Function(List<UserCollection> children)? root,
  }) {
    return file?.call(template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, String uuid,
            List<UserCollection> children)?
        folder,
    TResult Function(Template template)? file,
    TResult Function(List<UserCollection> children)? root,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserCollectionFolder value) folder,
    required TResult Function(UserCollectionFile value) file,
    required TResult Function(UserCollectionRoot value) root,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCollectionFolder value)? folder,
    TResult? Function(UserCollectionFile value)? file,
    TResult? Function(UserCollectionRoot value)? root,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCollectionFolder value)? folder,
    TResult Function(UserCollectionFile value)? file,
    TResult Function(UserCollectionRoot value)? root,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionFileImplToJson(
      this,
    );
  }
}

abstract class UserCollectionFile implements UserCollection {
  factory UserCollectionFile({required final Template template}) =
      _$UserCollectionFileImpl;

  factory UserCollectionFile.fromJson(Map<String, dynamic> json) =
      _$UserCollectionFileImpl.fromJson;

  Template get template;
  @JsonKey(ignore: true)
  _$$UserCollectionFileImplCopyWith<_$UserCollectionFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCollectionRootImplCopyWith<$Res> {
  factory _$$UserCollectionRootImplCopyWith(_$UserCollectionRootImpl value,
          $Res Function(_$UserCollectionRootImpl) then) =
      __$$UserCollectionRootImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserCollection> children});
}

/// @nodoc
class __$$UserCollectionRootImplCopyWithImpl<$Res>
    extends _$UserCollectionCopyWithImpl<$Res, _$UserCollectionRootImpl>
    implements _$$UserCollectionRootImplCopyWith<$Res> {
  __$$UserCollectionRootImplCopyWithImpl(_$UserCollectionRootImpl _value,
      $Res Function(_$UserCollectionRootImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$UserCollectionRootImpl(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<UserCollection>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCollectionRootImpl implements UserCollectionRoot {
  _$UserCollectionRootImpl(
      {final List<UserCollection> children = const [], final String? $type})
      : _children = children,
        $type = $type ?? 'root';

  factory _$UserCollectionRootImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCollectionRootImplFromJson(json);

  final List<UserCollection> _children;
  @override
  @JsonKey()
  List<UserCollection> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserCollection.root(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCollectionRootImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCollectionRootImplCopyWith<_$UserCollectionRootImpl> get copyWith =>
      __$$UserCollectionRootImplCopyWithImpl<_$UserCollectionRootImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description, String uuid,
            List<UserCollection> children)
        folder,
    required TResult Function(Template template) file,
    required TResult Function(List<UserCollection> children) root,
  }) {
    return root(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, String uuid,
            List<UserCollection> children)?
        folder,
    TResult? Function(Template template)? file,
    TResult? Function(List<UserCollection> children)? root,
  }) {
    return root?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, String uuid,
            List<UserCollection> children)?
        folder,
    TResult Function(Template template)? file,
    TResult Function(List<UserCollection> children)? root,
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
    required TResult Function(UserCollectionFolder value) folder,
    required TResult Function(UserCollectionFile value) file,
    required TResult Function(UserCollectionRoot value) root,
  }) {
    return root(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserCollectionFolder value)? folder,
    TResult? Function(UserCollectionFile value)? file,
    TResult? Function(UserCollectionRoot value)? root,
  }) {
    return root?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCollectionFolder value)? folder,
    TResult Function(UserCollectionFile value)? file,
    TResult Function(UserCollectionRoot value)? root,
    required TResult orElse(),
  }) {
    if (root != null) {
      return root(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionRootImplToJson(
      this,
    );
  }
}

abstract class UserCollectionRoot implements UserCollection {
  factory UserCollectionRoot({final List<UserCollection> children}) =
      _$UserCollectionRootImpl;

  factory UserCollectionRoot.fromJson(Map<String, dynamic> json) =
      _$UserCollectionRootImpl.fromJson;

  List<UserCollection> get children;
  @JsonKey(ignore: true)
  _$$UserCollectionRootImplCopyWith<_$UserCollectionRootImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
