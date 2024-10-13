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
  Set<StructuredDataType<FoldableSelection, FileSelection>>
      get choosableVariablesInCurrentScope =>
          throw _privateConstructorUsedError;
  List<AnalysedSegmentStatus> get segmentsStates =>
      throw _privateConstructorUsedError;

  /// Create a copy of AnalysedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {Set<StructuredDataType<FoldableSelection, FileSelection>>
          choosableVariablesInCurrentScope,
      List<AnalysedSegmentStatus> segmentsStates});
}

/// @nodoc
class _$AnalysedResponseCopyWithImpl<$Res, $Val extends AnalysedResponse>
    implements $AnalysedResponseCopyWith<$Res> {
  _$AnalysedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choosableVariablesInCurrentScope = null,
    Object? segmentsStates = null,
  }) {
    return _then(_value.copyWith(
      choosableVariablesInCurrentScope: null == choosableVariablesInCurrentScope
          ? _value.choosableVariablesInCurrentScope
          : choosableVariablesInCurrentScope // ignore: cast_nullable_to_non_nullable
              as Set<StructuredDataType<FoldableSelection, FileSelection>>,
      segmentsStates: null == segmentsStates
          ? _value.segmentsStates
          : segmentsStates // ignore: cast_nullable_to_non_nullable
              as List<AnalysedSegmentStatus>,
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
      {Set<StructuredDataType<FoldableSelection, FileSelection>>
          choosableVariablesInCurrentScope,
      List<AnalysedSegmentStatus> segmentsStates});
}

/// @nodoc
class __$$AnalysedResponseImplCopyWithImpl<$Res>
    extends _$AnalysedResponseCopyWithImpl<$Res, _$AnalysedResponseImpl>
    implements _$$AnalysedResponseImplCopyWith<$Res> {
  __$$AnalysedResponseImplCopyWithImpl(_$AnalysedResponseImpl _value,
      $Res Function(_$AnalysedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalysedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choosableVariablesInCurrentScope = null,
    Object? segmentsStates = null,
  }) {
    return _then(_$AnalysedResponseImpl(
      choosableVariablesInCurrentScope: null == choosableVariablesInCurrentScope
          ? _value._choosableVariablesInCurrentScope
          : choosableVariablesInCurrentScope // ignore: cast_nullable_to_non_nullable
              as Set<StructuredDataType<FoldableSelection, FileSelection>>,
      segmentsStates: null == segmentsStates
          ? _value._segmentsStates
          : segmentsStates // ignore: cast_nullable_to_non_nullable
              as List<AnalysedSegmentStatus>,
    ));
  }
}

/// @nodoc

class _$AnalysedResponseImpl implements _AnalysedResponse {
  _$AnalysedResponseImpl(
      {required final Set<StructuredDataType<FoldableSelection, FileSelection>>
          choosableVariablesInCurrentScope,
      required final List<AnalysedSegmentStatus> segmentsStates})
      : _choosableVariablesInCurrentScope = choosableVariablesInCurrentScope,
        _segmentsStates = segmentsStates;

  final Set<StructuredDataType<FoldableSelection, FileSelection>>
      _choosableVariablesInCurrentScope;
  @override
  Set<StructuredDataType<FoldableSelection, FileSelection>>
      get choosableVariablesInCurrentScope {
    if (_choosableVariablesInCurrentScope is EqualUnmodifiableSetView)
      return _choosableVariablesInCurrentScope;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_choosableVariablesInCurrentScope);
  }

  final List<AnalysedSegmentStatus> _segmentsStates;
  @override
  List<AnalysedSegmentStatus> get segmentsStates {
    if (_segmentsStates is EqualUnmodifiableListView) return _segmentsStates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_segmentsStates);
  }

  @override
  String toString() {
    return 'AnalysedResponse(choosableVariablesInCurrentScope: $choosableVariablesInCurrentScope, segmentsStates: $segmentsStates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysedResponseImpl &&
            const DeepCollectionEquality().equals(
                other._choosableVariablesInCurrentScope,
                _choosableVariablesInCurrentScope) &&
            const DeepCollectionEquality()
                .equals(other._segmentsStates, _segmentsStates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_choosableVariablesInCurrentScope),
      const DeepCollectionEquality().hash(_segmentsStates));

  /// Create a copy of AnalysedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysedResponseImplCopyWith<_$AnalysedResponseImpl> get copyWith =>
      __$$AnalysedResponseImplCopyWithImpl<_$AnalysedResponseImpl>(
          this, _$identity);
}

abstract class _AnalysedResponse implements AnalysedResponse {
  factory _AnalysedResponse(
      {required final Set<StructuredDataType<FoldableSelection, FileSelection>>
          choosableVariablesInCurrentScope,
      required final List<AnalysedSegmentStatus>
          segmentsStates}) = _$AnalysedResponseImpl;

  @override
  Set<StructuredDataType<FoldableSelection, FileSelection>>
      get choosableVariablesInCurrentScope;
  @override
  List<AnalysedSegmentStatus> get segmentsStates;

  /// Create a copy of AnalysedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysedResponseImplCopyWith<_$AnalysedResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
