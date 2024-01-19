// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_possibilities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationPossibilitiesState {
  ENavigationPossibilities get selectedPossibility =>
      throw _privateConstructorUsedError;
  List<ENavigationPossibilities> get possibilities =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)
        loggedIn,
    required TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)
        loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedIn,
    TResult? Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedIn,
    TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationPossibilitiesStateCopyWith<NavigationPossibilitiesState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationPossibilitiesStateCopyWith<$Res> {
  factory $NavigationPossibilitiesStateCopyWith(
          NavigationPossibilitiesState value,
          $Res Function(NavigationPossibilitiesState) then) =
      _$NavigationPossibilitiesStateCopyWithImpl<$Res,
          NavigationPossibilitiesState>;
  @useResult
  $Res call(
      {ENavigationPossibilities selectedPossibility,
      List<ENavigationPossibilities> possibilities});
}

/// @nodoc
class _$NavigationPossibilitiesStateCopyWithImpl<$Res,
        $Val extends NavigationPossibilitiesState>
    implements $NavigationPossibilitiesStateCopyWith<$Res> {
  _$NavigationPossibilitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPossibility = null,
    Object? possibilities = null,
  }) {
    return _then(_value.copyWith(
      selectedPossibility: null == selectedPossibility
          ? _value.selectedPossibility
          : selectedPossibility // ignore: cast_nullable_to_non_nullable
              as ENavigationPossibilities,
      possibilities: null == possibilities
          ? _value.possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<ENavigationPossibilities>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res>
    implements $NavigationPossibilitiesStateCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ENavigationPossibilities selectedPossibility,
      List<ENavigationPossibilities> possibilities});
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$NavigationPossibilitiesStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPossibility = null,
    Object? possibilities = null,
  }) {
    return _then(_$LoggedInImpl(
      selectedPossibility: null == selectedPossibility
          ? _value.selectedPossibility
          : selectedPossibility // ignore: cast_nullable_to_non_nullable
              as ENavigationPossibilities,
      possibilities: null == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<ENavigationPossibilities>,
    ));
  }
}

/// @nodoc

class _$LoggedInImpl implements LoggedIn {
  _$LoggedInImpl(
      {this.selectedPossibility = ENavigationPossibilities.collection,
      final List<ENavigationPossibilities> possibilities = const [
        ENavigationPossibilities.collection,
        ENavigationPossibilities.generateText,
        ENavigationPossibilities.createMustache,
        ENavigationPossibilities.account,
        ENavigationPossibilities.becamePremium,
        ENavigationPossibilities.settings
      ]})
      : _possibilities = possibilities;

  @override
  @JsonKey()
  final ENavigationPossibilities selectedPossibility;
  final List<ENavigationPossibilities> _possibilities;
  @override
  @JsonKey()
  List<ENavigationPossibilities> get possibilities {
    if (_possibilities is EqualUnmodifiableListView) return _possibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possibilities);
  }

  @override
  String toString() {
    return 'NavigationPossibilitiesState.loggedIn(selectedPossibility: $selectedPossibility, possibilities: $possibilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.selectedPossibility, selectedPossibility) ||
                other.selectedPossibility == selectedPossibility) &&
            const DeepCollectionEquality()
                .equals(other._possibilities, _possibilities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPossibility,
      const DeepCollectionEquality().hash(_possibilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)
        loggedIn,
    required TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)
        loggedOut,
  }) {
    return loggedIn(selectedPossibility, possibilities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedIn,
    TResult? Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedOut,
  }) {
    return loggedIn?.call(selectedPossibility, possibilities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedIn,
    TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(selectedPossibility, possibilities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements NavigationPossibilitiesState {
  factory LoggedIn(
      {final ENavigationPossibilities selectedPossibility,
      final List<ENavigationPossibilities> possibilities}) = _$LoggedInImpl;

  @override
  ENavigationPossibilities get selectedPossibility;
  @override
  List<ENavigationPossibilities> get possibilities;
  @override
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res>
    implements $NavigationPossibilitiesStateCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ENavigationPossibilities selectedPossibility,
      List<ENavigationPossibilities> possibilities});
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$NavigationPossibilitiesStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPossibility = null,
    Object? possibilities = null,
  }) {
    return _then(_$LoggedOutImpl(
      selectedPossibility: null == selectedPossibility
          ? _value.selectedPossibility
          : selectedPossibility // ignore: cast_nullable_to_non_nullable
              as ENavigationPossibilities,
      possibilities: null == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<ENavigationPossibilities>,
    ));
  }
}

/// @nodoc

class _$LoggedOutImpl implements LoggedOut {
  _$LoggedOutImpl(
      {this.selectedPossibility = ENavigationPossibilities.collection,
      final List<ENavigationPossibilities> possibilities = const [
        ENavigationPossibilities.collection,
        ENavigationPossibilities.generateText,
        ENavigationPossibilities.createMustache,
        ENavigationPossibilities.login,
        ENavigationPossibilities.settings
      ]})
      : _possibilities = possibilities;

  @override
  @JsonKey()
  final ENavigationPossibilities selectedPossibility;
  final List<ENavigationPossibilities> _possibilities;
  @override
  @JsonKey()
  List<ENavigationPossibilities> get possibilities {
    if (_possibilities is EqualUnmodifiableListView) return _possibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possibilities);
  }

  @override
  String toString() {
    return 'NavigationPossibilitiesState.loggedOut(selectedPossibility: $selectedPossibility, possibilities: $possibilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedOutImpl &&
            (identical(other.selectedPossibility, selectedPossibility) ||
                other.selectedPossibility == selectedPossibility) &&
            const DeepCollectionEquality()
                .equals(other._possibilities, _possibilities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPossibility,
      const DeepCollectionEquality().hash(_possibilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedOutImplCopyWith<_$LoggedOutImpl> get copyWith =>
      __$$LoggedOutImplCopyWithImpl<_$LoggedOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)
        loggedIn,
    required TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)
        loggedOut,
  }) {
    return loggedOut(selectedPossibility, possibilities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedIn,
    TResult? Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedOut,
  }) {
    return loggedOut?.call(selectedPossibility, possibilities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedIn,
    TResult Function(ENavigationPossibilities selectedPossibility,
            List<ENavigationPossibilities> possibilities)?
        loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(selectedPossibility, possibilities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut implements NavigationPossibilitiesState {
  factory LoggedOut(
      {final ENavigationPossibilities selectedPossibility,
      final List<ENavigationPossibilities> possibilities}) = _$LoggedOutImpl;

  @override
  ENavigationPossibilities get selectedPossibility;
  @override
  List<ENavigationPossibilities> get possibilities;
  @override
  @JsonKey(ignore: true)
  _$$LoggedOutImplCopyWith<_$LoggedOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
