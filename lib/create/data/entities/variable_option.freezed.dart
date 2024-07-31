// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variable_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VariableOption {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openBoolean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? openBoolean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openBoolean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VariableOption value) openBoolean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VariableOption value)? openBoolean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VariableOption value)? openBoolean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableOptionCopyWith<$Res> {
  factory $VariableOptionCopyWith(
          VariableOption value, $Res Function(VariableOption) then) =
      _$VariableOptionCopyWithImpl<$Res, VariableOption>;
}

/// @nodoc
class _$VariableOptionCopyWithImpl<$Res, $Val extends VariableOption>
    implements $VariableOptionCopyWith<$Res> {
  _$VariableOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VariableOption
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VariableOptionImplCopyWith<$Res> {
  factory _$$VariableOptionImplCopyWith(_$VariableOptionImpl value,
          $Res Function(_$VariableOptionImpl) then) =
      __$$VariableOptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VariableOptionImplCopyWithImpl<$Res>
    extends _$VariableOptionCopyWithImpl<$Res, _$VariableOptionImpl>
    implements _$$VariableOptionImplCopyWith<$Res> {
  __$$VariableOptionImplCopyWithImpl(
      _$VariableOptionImpl _value, $Res Function(_$VariableOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableOption
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VariableOptionImpl implements _VariableOption {
  const _$VariableOptionImpl();

  @override
  String toString() {
    return 'VariableOption.openBoolean()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VariableOptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openBoolean,
  }) {
    return openBoolean();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? openBoolean,
  }) {
    return openBoolean?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openBoolean,
    required TResult orElse(),
  }) {
    if (openBoolean != null) {
      return openBoolean();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VariableOption value) openBoolean,
  }) {
    return openBoolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VariableOption value)? openBoolean,
  }) {
    return openBoolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VariableOption value)? openBoolean,
    required TResult orElse(),
  }) {
    if (openBoolean != null) {
      return openBoolean(this);
    }
    return orElse();
  }
}

abstract class _VariableOption implements VariableOption {
  const factory _VariableOption() = _$VariableOptionImpl;
}
