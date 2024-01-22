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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri navigationIntent) initial,
    required TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)
        loggedIn,
    required TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)
        loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri navigationIntent)? initial,
    TResult? Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedIn,
    TResult? Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri navigationIntent)? initial,
    TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedIn,
    TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationPossibilitiesStateCopyWith<$Res> {
  factory $NavigationPossibilitiesStateCopyWith(
          NavigationPossibilitiesState value,
          $Res Function(NavigationPossibilitiesState) then) =
      _$NavigationPossibilitiesStateCopyWithImpl<$Res,
          NavigationPossibilitiesState>;
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
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri navigationIntent});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NavigationPossibilitiesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigationIntent = null,
  }) {
    return _then(_$InitialImpl(
      navigationIntent: null == navigationIntent
          ? _value.navigationIntent
          : navigationIntent // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  _$InitialImpl({required this.navigationIntent});

  @override
  final Uri navigationIntent;

  @override
  String toString() {
    return 'NavigationPossibilitiesState.initial(navigationIntent: $navigationIntent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.navigationIntent, navigationIntent) ||
                other.navigationIntent == navigationIntent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigationIntent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri navigationIntent) initial,
    required TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)
        loggedIn,
    required TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)
        loggedOut,
  }) {
    return initial(navigationIntent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri navigationIntent)? initial,
    TResult? Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedIn,
    TResult? Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedOut,
  }) {
    return initial?.call(navigationIntent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri navigationIntent)? initial,
    TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedIn,
    TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(navigationIntent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NavigationPossibilitiesState {
  factory Initial({required final Uri navigationIntent}) = _$InitialImpl;

  Uri get navigationIntent;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CurrentNavigationState selectedPossibility,
      List<EDashboardNavigationPossibilities> possibilities});
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
              as CurrentNavigationState,
      possibilities: null == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<EDashboardNavigationPossibilities>,
    ));
  }
}

/// @nodoc

class _$LoggedInImpl implements LoggedIn {
  _$LoggedInImpl(
      {required this.selectedPossibility,
      final List<EDashboardNavigationPossibilities> possibilities = const [
        EDashboardNavigationPossibilities.collection,
        EDashboardNavigationPossibilities.generateText,
        EDashboardNavigationPossibilities.createMustache,
        EDashboardNavigationPossibilities.account,
        EDashboardNavigationPossibilities.becamePremium,
        EDashboardNavigationPossibilities.settings
      ]})
      : _possibilities = possibilities;

  @override
  final CurrentNavigationState selectedPossibility;
  final List<EDashboardNavigationPossibilities> _possibilities;
  @override
  @JsonKey()
  List<EDashboardNavigationPossibilities> get possibilities {
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
    required TResult Function(Uri navigationIntent) initial,
    required TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)
        loggedIn,
    required TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)
        loggedOut,
  }) {
    return loggedIn(selectedPossibility, possibilities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri navigationIntent)? initial,
    TResult? Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedIn,
    TResult? Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedOut,
  }) {
    return loggedIn?.call(selectedPossibility, possibilities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri navigationIntent)? initial,
    TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedIn,
    TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
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
    required TResult Function(Initial value) initial,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
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
          {required final CurrentNavigationState selectedPossibility,
          final List<EDashboardNavigationPossibilities> possibilities}) =
      _$LoggedInImpl;

  CurrentNavigationState get selectedPossibility;
  List<EDashboardNavigationPossibilities> get possibilities;
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CurrentNavigationState selectedPossibility,
      List<EDashboardNavigationPossibilities> possibilities});
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
              as CurrentNavigationState,
      possibilities: null == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<EDashboardNavigationPossibilities>,
    ));
  }
}

/// @nodoc

class _$LoggedOutImpl implements LoggedOut {
  _$LoggedOutImpl(
      {required this.selectedPossibility,
      final List<EDashboardNavigationPossibilities> possibilities = const [
        EDashboardNavigationPossibilities.collection,
        EDashboardNavigationPossibilities.generateText,
        EDashboardNavigationPossibilities.createMustache,
        EDashboardNavigationPossibilities.auth,
        EDashboardNavigationPossibilities.settings
      ]})
      : _possibilities = possibilities;

  @override
  final CurrentNavigationState selectedPossibility;
  final List<EDashboardNavigationPossibilities> _possibilities;
  @override
  @JsonKey()
  List<EDashboardNavigationPossibilities> get possibilities {
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
    required TResult Function(Uri navigationIntent) initial,
    required TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)
        loggedIn,
    required TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)
        loggedOut,
  }) {
    return loggedOut(selectedPossibility, possibilities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri navigationIntent)? initial,
    TResult? Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedIn,
    TResult? Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedOut,
  }) {
    return loggedOut?.call(selectedPossibility, possibilities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri navigationIntent)? initial,
    TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
        loggedIn,
    TResult Function(CurrentNavigationState selectedPossibility,
            List<EDashboardNavigationPossibilities> possibilities)?
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
    required TResult Function(Initial value) initial,
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
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
          {required final CurrentNavigationState selectedPossibility,
          final List<EDashboardNavigationPossibilities> possibilities}) =
      _$LoggedOutImpl;

  CurrentNavigationState get selectedPossibility;
  List<EDashboardNavigationPossibilities> get possibilities;
  @JsonKey(ignore: true)
  _$$LoggedOutImplCopyWith<_$LoggedOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
