// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysed_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnalysedResponse {
  Set<VariableImplementation> get tokenIdentifiers =>
      throw _privateConstructorUsedError;
  List<AnalysedSegment> get segments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalysedResponseCopyWith<AnalysedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysedResponseCopyWith<$Res> {
  factory $AnalysedResponseCopyWith(
          AnalysedResponse value, $Res Function(AnalysedResponse) then) =
      _$AnalysedResponseCopyWithImpl<$Res, AnalysedResponse>;
  @useResult
  $Res call(
      {Set<VariableImplementation> tokenIdentifiers,
      List<AnalysedSegment> segments});
}

/// @nodoc
class _$AnalysedResponseCopyWithImpl<$Res, $Val extends AnalysedResponse>
    implements $AnalysedResponseCopyWith<$Res> {
  _$AnalysedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenIdentifiers = null,
    Object? segments = null,
  }) {
    return _then(_value.copyWith(
      tokenIdentifiers: null == tokenIdentifiers
          ? _value.tokenIdentifiers
          : tokenIdentifiers // ignore: cast_nullable_to_non_nullable
              as Set<VariableImplementation>,
      segments: null == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<AnalysedSegment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalysedResponseImplCopyWith<$Res>
    implements $AnalysedResponseCopyWith<$Res> {
  factory _$$AnalysedResponseImplCopyWith(_$AnalysedResponseImpl value,
          $Res Function(_$AnalysedResponseImpl) then) =
      __$$AnalysedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Set<VariableImplementation> tokenIdentifiers,
      List<AnalysedSegment> segments});
}

/// @nodoc
class __$$AnalysedResponseImplCopyWithImpl<$Res>
    extends _$AnalysedResponseCopyWithImpl<$Res, _$AnalysedResponseImpl>
    implements _$$AnalysedResponseImplCopyWith<$Res> {
  __$$AnalysedResponseImplCopyWithImpl(_$AnalysedResponseImpl _value,
      $Res Function(_$AnalysedResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenIdentifiers = null,
    Object? segments = null,
  }) {
    return _then(_$AnalysedResponseImpl(
      tokenIdentifiers: null == tokenIdentifiers
          ? _value._tokenIdentifiers
          : tokenIdentifiers // ignore: cast_nullable_to_non_nullable
              as Set<VariableImplementation>,
      segments: null == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<AnalysedSegment>,
    ));
  }
}

/// @nodoc

class _$AnalysedResponseImpl implements _AnalysedResponse {
  _$AnalysedResponseImpl(
      {required final Set<VariableImplementation> tokenIdentifiers,
      required final List<AnalysedSegment> segments})
      : _tokenIdentifiers = tokenIdentifiers,
        _segments = segments;

  final Set<VariableImplementation> _tokenIdentifiers;
  @override
  Set<VariableImplementation> get tokenIdentifiers {
    if (_tokenIdentifiers is EqualUnmodifiableSetView) return _tokenIdentifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_tokenIdentifiers);
  }

  final List<AnalysedSegment> _segments;
  @override
  List<AnalysedSegment> get segments {
    if (_segments is EqualUnmodifiableListView) return _segments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_segments);
  }

  @override
  String toString() {
    return 'AnalysedResponse(tokenIdentifiers: $tokenIdentifiers, segments: $segments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysedResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._tokenIdentifiers, _tokenIdentifiers) &&
            const DeepCollectionEquality().equals(other._segments, _segments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tokenIdentifiers),
      const DeepCollectionEquality().hash(_segments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysedResponseImplCopyWith<_$AnalysedResponseImpl> get copyWith =>
      __$$AnalysedResponseImplCopyWithImpl<_$AnalysedResponseImpl>(
          this, _$identity);
}

abstract class _AnalysedResponse implements AnalysedResponse {
  factory _AnalysedResponse(
      {required final Set<VariableImplementation> tokenIdentifiers,
      required final List<AnalysedSegment> segments}) = _$AnalysedResponseImpl;

  @override
  Set<VariableImplementation> get tokenIdentifiers;
  @override
  List<AnalysedSegment> get segments;
  @override
  @JsonKey(ignore: true)
  _$$AnalysedResponseImplCopyWith<_$AnalysedResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
