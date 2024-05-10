// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_dates_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelDatesCubitState {
  DateTime? get departureDateTime => throw _privateConstructorUsedError;
  String get departureDate => throw _privateConstructorUsedError;
  String get returnDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelDatesCubitStateCopyWith<TravelDatesCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDatesCubitStateCopyWith<$Res> {
  factory $TravelDatesCubitStateCopyWith(TravelDatesCubitState value,
          $Res Function(TravelDatesCubitState) then) =
      _$TravelDatesCubitStateCopyWithImpl<$Res, TravelDatesCubitState>;
  @useResult
  $Res call(
      {DateTime? departureDateTime, String departureDate, String returnDate});
}

/// @nodoc
class _$TravelDatesCubitStateCopyWithImpl<$Res,
        $Val extends TravelDatesCubitState>
    implements $TravelDatesCubitStateCopyWith<$Res> {
  _$TravelDatesCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureDateTime = freezed,
    Object? departureDate = null,
    Object? returnDate = null,
  }) {
    return _then(_value.copyWith(
      departureDateTime: freezed == departureDateTime
          ? _value.departureDateTime
          : departureDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelDatesCubitStateImplCopyWith<$Res>
    implements $TravelDatesCubitStateCopyWith<$Res> {
  factory _$$TravelDatesCubitStateImplCopyWith(
          _$TravelDatesCubitStateImpl value,
          $Res Function(_$TravelDatesCubitStateImpl) then) =
      __$$TravelDatesCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? departureDateTime, String departureDate, String returnDate});
}

/// @nodoc
class __$$TravelDatesCubitStateImplCopyWithImpl<$Res>
    extends _$TravelDatesCubitStateCopyWithImpl<$Res,
        _$TravelDatesCubitStateImpl>
    implements _$$TravelDatesCubitStateImplCopyWith<$Res> {
  __$$TravelDatesCubitStateImplCopyWithImpl(_$TravelDatesCubitStateImpl _value,
      $Res Function(_$TravelDatesCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureDateTime = freezed,
    Object? departureDate = null,
    Object? returnDate = null,
  }) {
    return _then(_$TravelDatesCubitStateImpl(
      departureDateTime: freezed == departureDateTime
          ? _value.departureDateTime
          : departureDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TravelDatesCubitStateImpl implements _TravelDatesCubitState {
  const _$TravelDatesCubitStateImpl(
      {this.departureDateTime, this.departureDate = '', this.returnDate = ''});

  @override
  final DateTime? departureDateTime;
  @override
  @JsonKey()
  final String departureDate;
  @override
  @JsonKey()
  final String returnDate;

  @override
  String toString() {
    return 'TravelDatesCubitState(departureDateTime: $departureDateTime, departureDate: $departureDate, returnDate: $returnDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelDatesCubitStateImpl &&
            (identical(other.departureDateTime, departureDateTime) ||
                other.departureDateTime == departureDateTime) &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, departureDateTime, departureDate, returnDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDatesCubitStateImplCopyWith<_$TravelDatesCubitStateImpl>
      get copyWith => __$$TravelDatesCubitStateImplCopyWithImpl<
          _$TravelDatesCubitStateImpl>(this, _$identity);
}

abstract class _TravelDatesCubitState implements TravelDatesCubitState {
  const factory _TravelDatesCubitState(
      {final DateTime? departureDateTime,
      final String departureDate,
      final String returnDate}) = _$TravelDatesCubitStateImpl;

  @override
  DateTime? get departureDateTime;
  @override
  String get departureDate;
  @override
  String get returnDate;
  @override
  @JsonKey(ignore: true)
  _$$TravelDatesCubitStateImplCopyWith<_$TravelDatesCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
