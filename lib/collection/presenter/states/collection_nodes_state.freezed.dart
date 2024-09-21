// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_nodes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CollectionNodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String uuid, TreeNode<UserCollection> treeNode)
        withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String uuid, TreeNode<UserCollection> treeNode)? withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String uuid, TreeNode<UserCollection> treeNode)? withData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CollectionNodesStateEmpty value) empty,
    required TResult Function(_CollectionNodesStateWithData value) withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CollectionNodesStateEmpty value)? empty,
    TResult? Function(_CollectionNodesStateWithData value)? withData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CollectionNodesStateEmpty value)? empty,
    TResult Function(_CollectionNodesStateWithData value)? withData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionNodesStateCopyWith<$Res> {
  factory $CollectionNodesStateCopyWith(CollectionNodesState value,
          $Res Function(CollectionNodesState) then) =
      _$CollectionNodesStateCopyWithImpl<$Res, CollectionNodesState>;
}

/// @nodoc
class _$CollectionNodesStateCopyWithImpl<$Res,
        $Val extends CollectionNodesState>
    implements $CollectionNodesStateCopyWith<$Res> {
  _$CollectionNodesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionNodesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CollectionNodesStateEmptyImplCopyWith<$Res> {
  factory _$$CollectionNodesStateEmptyImplCopyWith(
          _$CollectionNodesStateEmptyImpl value,
          $Res Function(_$CollectionNodesStateEmptyImpl) then) =
      __$$CollectionNodesStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CollectionNodesStateEmptyImplCopyWithImpl<$Res>
    extends _$CollectionNodesStateCopyWithImpl<$Res,
        _$CollectionNodesStateEmptyImpl>
    implements _$$CollectionNodesStateEmptyImplCopyWith<$Res> {
  __$$CollectionNodesStateEmptyImplCopyWithImpl(
      _$CollectionNodesStateEmptyImpl _value,
      $Res Function(_$CollectionNodesStateEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionNodesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CollectionNodesStateEmptyImpl implements _CollectionNodesStateEmpty {
  _$CollectionNodesStateEmptyImpl();

  @override
  String toString() {
    return 'CollectionNodesState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionNodesStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String uuid, TreeNode<UserCollection> treeNode)
        withData,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String uuid, TreeNode<UserCollection> treeNode)? withData,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String uuid, TreeNode<UserCollection> treeNode)? withData,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CollectionNodesStateEmpty value) empty,
    required TResult Function(_CollectionNodesStateWithData value) withData,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CollectionNodesStateEmpty value)? empty,
    TResult? Function(_CollectionNodesStateWithData value)? withData,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CollectionNodesStateEmpty value)? empty,
    TResult Function(_CollectionNodesStateWithData value)? withData,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _CollectionNodesStateEmpty implements CollectionNodesState {
  factory _CollectionNodesStateEmpty() = _$CollectionNodesStateEmptyImpl;
}

/// @nodoc
abstract class _$$CollectionNodesStateWithDataImplCopyWith<$Res> {
  factory _$$CollectionNodesStateWithDataImplCopyWith(
          _$CollectionNodesStateWithDataImpl value,
          $Res Function(_$CollectionNodesStateWithDataImpl) then) =
      __$$CollectionNodesStateWithDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid, TreeNode<UserCollection> treeNode});
}

/// @nodoc
class __$$CollectionNodesStateWithDataImplCopyWithImpl<$Res>
    extends _$CollectionNodesStateCopyWithImpl<$Res,
        _$CollectionNodesStateWithDataImpl>
    implements _$$CollectionNodesStateWithDataImplCopyWith<$Res> {
  __$$CollectionNodesStateWithDataImplCopyWithImpl(
      _$CollectionNodesStateWithDataImpl _value,
      $Res Function(_$CollectionNodesStateWithDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionNodesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? treeNode = null,
  }) {
    return _then(_$CollectionNodesStateWithDataImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      treeNode: null == treeNode
          ? _value.treeNode
          : treeNode // ignore: cast_nullable_to_non_nullable
              as TreeNode<UserCollection>,
    ));
  }
}

/// @nodoc

class _$CollectionNodesStateWithDataImpl
    implements _CollectionNodesStateWithData {
  _$CollectionNodesStateWithDataImpl(
      {required this.uuid, required this.treeNode});

  @override
  final String uuid;
  @override
  final TreeNode<UserCollection> treeNode;

  @override
  String toString() {
    return 'CollectionNodesState.withData(uuid: $uuid, treeNode: $treeNode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionNodesStateWithDataImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.treeNode, treeNode) ||
                other.treeNode == treeNode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, treeNode);

  /// Create a copy of CollectionNodesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionNodesStateWithDataImplCopyWith<
          _$CollectionNodesStateWithDataImpl>
      get copyWith => __$$CollectionNodesStateWithDataImplCopyWithImpl<
          _$CollectionNodesStateWithDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String uuid, TreeNode<UserCollection> treeNode)
        withData,
  }) {
    return withData(uuid, treeNode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String uuid, TreeNode<UserCollection> treeNode)? withData,
  }) {
    return withData?.call(uuid, treeNode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String uuid, TreeNode<UserCollection> treeNode)? withData,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(uuid, treeNode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CollectionNodesStateEmpty value) empty,
    required TResult Function(_CollectionNodesStateWithData value) withData,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CollectionNodesStateEmpty value)? empty,
    TResult? Function(_CollectionNodesStateWithData value)? withData,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CollectionNodesStateEmpty value)? empty,
    TResult Function(_CollectionNodesStateWithData value)? withData,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }
}

abstract class _CollectionNodesStateWithData implements CollectionNodesState {
  factory _CollectionNodesStateWithData(
          {required final String uuid,
          required final TreeNode<UserCollection> treeNode}) =
      _$CollectionNodesStateWithDataImpl;

  String get uuid;
  TreeNode<UserCollection> get treeNode;

  /// Create a copy of CollectionNodesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionNodesStateWithDataImplCopyWith<
          _$CollectionNodesStateWithDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
