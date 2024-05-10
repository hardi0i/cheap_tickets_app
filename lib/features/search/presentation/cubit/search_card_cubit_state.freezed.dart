// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_card_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchCardCubitState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  SearchCardState<dynamic> get state => throw _privateConstructorUsedError;
  String get departure => throw _privateConstructorUsedError;
  String get arrival => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchCardCubitStateCopyWith<SearchCardCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCardCubitStateCopyWith<$Res> {
  factory $SearchCardCubitStateCopyWith(SearchCardCubitState value,
          $Res Function(SearchCardCubitState) then) =
      _$SearchCardCubitStateCopyWithImpl<$Res, SearchCardCubitState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      SearchCardState<dynamic> state,
      String departure,
      String arrival});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $SearchCardStateCopyWith<dynamic, $Res> get state;
}

/// @nodoc
class _$SearchCardCubitStateCopyWithImpl<$Res,
        $Val extends SearchCardCubitState>
    implements $SearchCardCubitStateCopyWith<$Res> {
  _$SearchCardCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? state = null,
    Object? departure = null,
    Object? arrival = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SearchCardState<dynamic>,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchCardStateCopyWith<dynamic, $Res> get state {
    return $SearchCardStateCopyWith<dynamic, $Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchCardCubitStateImplCopyWith<$Res>
    implements $SearchCardCubitStateCopyWith<$Res> {
  factory _$$SearchCardCubitStateImplCopyWith(_$SearchCardCubitStateImpl value,
          $Res Function(_$SearchCardCubitStateImpl) then) =
      __$$SearchCardCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      SearchCardState<dynamic> state,
      String departure,
      String arrival});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $SearchCardStateCopyWith<dynamic, $Res> get state;
}

/// @nodoc
class __$$SearchCardCubitStateImplCopyWithImpl<$Res>
    extends _$SearchCardCubitStateCopyWithImpl<$Res, _$SearchCardCubitStateImpl>
    implements _$$SearchCardCubitStateImplCopyWith<$Res> {
  __$$SearchCardCubitStateImplCopyWithImpl(_$SearchCardCubitStateImpl _value,
      $Res Function(_$SearchCardCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? state = null,
    Object? departure = null,
    Object? arrival = null,
  }) {
    return _then(_$SearchCardCubitStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SearchCardState<dynamic>,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCardCubitStateImpl implements _SearchCardCubitState {
  const _$SearchCardCubitStateImpl(
      {this.status = const BaseStatus.initial(),
      this.state = const SearchCardState.initial(),
      this.departure = '',
      this.arrival = ''});

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  @override
  @JsonKey()
  final SearchCardState<dynamic> state;
  @override
  @JsonKey()
  final String departure;
  @override
  @JsonKey()
  final String arrival;

  @override
  String toString() {
    return 'SearchCardCubitState(status: $status, state: $state, departure: $departure, arrival: $arrival)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCardCubitStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrival, arrival) || other.arrival == arrival));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, state, departure, arrival);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCardCubitStateImplCopyWith<_$SearchCardCubitStateImpl>
      get copyWith =>
          __$$SearchCardCubitStateImplCopyWithImpl<_$SearchCardCubitStateImpl>(
              this, _$identity);
}

abstract class _SearchCardCubitState implements SearchCardCubitState {
  const factory _SearchCardCubitState(
      {final BaseStatus<dynamic> status,
      final SearchCardState<dynamic> state,
      final String departure,
      final String arrival}) = _$SearchCardCubitStateImpl;

  @override
  BaseStatus<dynamic> get status;
  @override
  SearchCardState<dynamic> get state;
  @override
  String get departure;
  @override
  String get arrival;
  @override
  @JsonKey(ignore: true)
  _$$SearchCardCubitStateImplCopyWith<_$SearchCardCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
