// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_string_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentStringState _$ContentStringStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'normal':
      return Normal.fromJson(json);
    case 'withToken':
      return WithToken.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ContentStringState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ContentStringState {
  String get currentText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currentText) normal,
    required TResult Function(String currentText, List<Token> tokensInIt)
        withToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentText)? normal,
    TResult? Function(String currentText, List<Token> tokensInIt)? withToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentText)? normal,
    TResult Function(String currentText, List<Token> tokensInIt)? withToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
    required TResult Function(WithToken value) withToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
    TResult? Function(WithToken value)? withToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    TResult Function(WithToken value)? withToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentStringStateCopyWith<ContentStringState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStringStateCopyWith<$Res> {
  factory $ContentStringStateCopyWith(
          ContentStringState value, $Res Function(ContentStringState) then) =
      _$ContentStringStateCopyWithImpl<$Res, ContentStringState>;
  @useResult
  $Res call({String currentText});
}

/// @nodoc
class _$ContentStringStateCopyWithImpl<$Res, $Val extends ContentStringState>
    implements $ContentStringStateCopyWith<$Res> {
  _$ContentStringStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentText = null,
  }) {
    return _then(_value.copyWith(
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NormalImplCopyWith<$Res>
    implements $ContentStringStateCopyWith<$Res> {
  factory _$$NormalImplCopyWith(
          _$NormalImpl value, $Res Function(_$NormalImpl) then) =
      __$$NormalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentText});
}

/// @nodoc
class __$$NormalImplCopyWithImpl<$Res>
    extends _$ContentStringStateCopyWithImpl<$Res, _$NormalImpl>
    implements _$$NormalImplCopyWith<$Res> {
  __$$NormalImplCopyWithImpl(
      _$NormalImpl _value, $Res Function(_$NormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentText = null,
  }) {
    return _then(_$NormalImpl(
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NormalImpl implements Normal {
  const _$NormalImpl({required this.currentText, final String? $type})
      : $type = $type ?? 'normal';

  factory _$NormalImpl.fromJson(Map<String, dynamic> json) =>
      _$$NormalImplFromJson(json);

  @override
  final String currentText;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ContentStringState.normal(currentText: $currentText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NormalImpl &&
            (identical(other.currentText, currentText) ||
                other.currentText == currentText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      __$$NormalImplCopyWithImpl<_$NormalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currentText) normal,
    required TResult Function(String currentText, List<Token> tokensInIt)
        withToken,
  }) {
    return normal(currentText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentText)? normal,
    TResult? Function(String currentText, List<Token> tokensInIt)? withToken,
  }) {
    return normal?.call(currentText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentText)? normal,
    TResult Function(String currentText, List<Token> tokensInIt)? withToken,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(currentText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
    required TResult Function(WithToken value) withToken,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
    TResult? Function(WithToken value)? withToken,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    TResult Function(WithToken value)? withToken,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NormalImplToJson(
      this,
    );
  }
}

abstract class Normal implements ContentStringState {
  const factory Normal({required final String currentText}) = _$NormalImpl;

  factory Normal.fromJson(Map<String, dynamic> json) = _$NormalImpl.fromJson;

  @override
  String get currentText;
  @override
  @JsonKey(ignore: true)
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithTokenImplCopyWith<$Res>
    implements $ContentStringStateCopyWith<$Res> {
  factory _$$WithTokenImplCopyWith(
          _$WithTokenImpl value, $Res Function(_$WithTokenImpl) then) =
      __$$WithTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentText, List<Token> tokensInIt});
}

/// @nodoc
class __$$WithTokenImplCopyWithImpl<$Res>
    extends _$ContentStringStateCopyWithImpl<$Res, _$WithTokenImpl>
    implements _$$WithTokenImplCopyWith<$Res> {
  __$$WithTokenImplCopyWithImpl(
      _$WithTokenImpl _value, $Res Function(_$WithTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentText = null,
    Object? tokensInIt = null,
  }) {
    return _then(_$WithTokenImpl(
      currentText: null == currentText
          ? _value.currentText
          : currentText // ignore: cast_nullable_to_non_nullable
              as String,
      tokensInIt: null == tokensInIt
          ? _value._tokensInIt
          : tokensInIt // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithTokenImpl implements WithToken {
  const _$WithTokenImpl(
      {required this.currentText,
      required final List<Token> tokensInIt,
      final String? $type})
      : _tokensInIt = tokensInIt,
        $type = $type ?? 'withToken';

  factory _$WithTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithTokenImplFromJson(json);

  @override
  final String currentText;
  final List<Token> _tokensInIt;
  @override
  List<Token> get tokensInIt {
    if (_tokensInIt is EqualUnmodifiableListView) return _tokensInIt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokensInIt);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ContentStringState.withToken(currentText: $currentText, tokensInIt: $tokensInIt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithTokenImpl &&
            (identical(other.currentText, currentText) ||
                other.currentText == currentText) &&
            const DeepCollectionEquality()
                .equals(other._tokensInIt, _tokensInIt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentText,
      const DeepCollectionEquality().hash(_tokensInIt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithTokenImplCopyWith<_$WithTokenImpl> get copyWith =>
      __$$WithTokenImplCopyWithImpl<_$WithTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currentText) normal,
    required TResult Function(String currentText, List<Token> tokensInIt)
        withToken,
  }) {
    return withToken(currentText, tokensInIt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currentText)? normal,
    TResult? Function(String currentText, List<Token> tokensInIt)? withToken,
  }) {
    return withToken?.call(currentText, tokensInIt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentText)? normal,
    TResult Function(String currentText, List<Token> tokensInIt)? withToken,
    required TResult orElse(),
  }) {
    if (withToken != null) {
      return withToken(currentText, tokensInIt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
    required TResult Function(WithToken value) withToken,
  }) {
    return withToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
    TResult? Function(WithToken value)? withToken,
  }) {
    return withToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    TResult Function(WithToken value)? withToken,
    required TResult orElse(),
  }) {
    if (withToken != null) {
      return withToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WithTokenImplToJson(
      this,
    );
  }
}

abstract class WithToken implements ContentStringState {
  const factory WithToken(
      {required final String currentText,
      required final List<Token> tokensInIt}) = _$WithTokenImpl;

  factory WithToken.fromJson(Map<String, dynamic> json) =
      _$WithTokenImpl.fromJson;

  @override
  String get currentText;
  List<Token> get tokensInIt;
  @override
  @JsonKey(ignore: true)
  _$$WithTokenImplCopyWith<_$WithTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
