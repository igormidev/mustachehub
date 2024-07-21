// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_configurations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillingConfigurationsState _$BillingConfigurationsStateFromJson(
    Map<String, dynamic> json) {
  return _BillingConfigurationsState.fromJson(json);
}

/// @nodoc
mixin _$BillingConfigurationsState {
  ERecurrencyMethod get choosedRecurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingConfigurationsStateCopyWith<BillingConfigurationsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingConfigurationsStateCopyWith<$Res> {
  factory $BillingConfigurationsStateCopyWith(BillingConfigurationsState value,
          $Res Function(BillingConfigurationsState) then) =
      _$BillingConfigurationsStateCopyWithImpl<$Res,
          BillingConfigurationsState>;
  @useResult
  $Res call({ERecurrencyMethod choosedRecurrency});
}

/// @nodoc
class _$BillingConfigurationsStateCopyWithImpl<$Res,
        $Val extends BillingConfigurationsState>
    implements $BillingConfigurationsStateCopyWith<$Res> {
  _$BillingConfigurationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choosedRecurrency = null,
  }) {
    return _then(_value.copyWith(
      choosedRecurrency: null == choosedRecurrency
          ? _value.choosedRecurrency
          : choosedRecurrency // ignore: cast_nullable_to_non_nullable
              as ERecurrencyMethod,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingConfigurationsStateImplCopyWith<$Res>
    implements $BillingConfigurationsStateCopyWith<$Res> {
  factory _$$BillingConfigurationsStateImplCopyWith(
          _$BillingConfigurationsStateImpl value,
          $Res Function(_$BillingConfigurationsStateImpl) then) =
      __$$BillingConfigurationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ERecurrencyMethod choosedRecurrency});
}

/// @nodoc
class __$$BillingConfigurationsStateImplCopyWithImpl<$Res>
    extends _$BillingConfigurationsStateCopyWithImpl<$Res,
        _$BillingConfigurationsStateImpl>
    implements _$$BillingConfigurationsStateImplCopyWith<$Res> {
  __$$BillingConfigurationsStateImplCopyWithImpl(
      _$BillingConfigurationsStateImpl _value,
      $Res Function(_$BillingConfigurationsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choosedRecurrency = null,
  }) {
    return _then(_$BillingConfigurationsStateImpl(
      choosedRecurrency: null == choosedRecurrency
          ? _value.choosedRecurrency
          : choosedRecurrency // ignore: cast_nullable_to_non_nullable
              as ERecurrencyMethod,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingConfigurationsStateImpl implements _BillingConfigurationsState {
  _$BillingConfigurationsStateImpl({required this.choosedRecurrency});

  factory _$BillingConfigurationsStateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BillingConfigurationsStateImplFromJson(json);

  @override
  final ERecurrencyMethod choosedRecurrency;

  @override
  String toString() {
    return 'BillingConfigurationsState(choosedRecurrency: $choosedRecurrency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingConfigurationsStateImpl &&
            (identical(other.choosedRecurrency, choosedRecurrency) ||
                other.choosedRecurrency == choosedRecurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, choosedRecurrency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingConfigurationsStateImplCopyWith<_$BillingConfigurationsStateImpl>
      get copyWith => __$$BillingConfigurationsStateImplCopyWithImpl<
          _$BillingConfigurationsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingConfigurationsStateImplToJson(
      this,
    );
  }
}

abstract class _BillingConfigurationsState
    implements BillingConfigurationsState {
  factory _BillingConfigurationsState(
          {required final ERecurrencyMethod choosedRecurrency}) =
      _$BillingConfigurationsStateImpl;

  factory _BillingConfigurationsState.fromJson(Map<String, dynamic> json) =
      _$BillingConfigurationsStateImpl.fromJson;

  @override
  ERecurrencyMethod get choosedRecurrency;
  @override
  @JsonKey(ignore: true)
  _$$BillingConfigurationsStateImplCopyWith<_$BillingConfigurationsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
