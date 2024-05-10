// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketsCubitState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<TicketEntity> get tickets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsCubitStateCopyWith<TicketsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsCubitStateCopyWith<$Res> {
  factory $TicketsCubitStateCopyWith(
          TicketsCubitState value, $Res Function(TicketsCubitState) then) =
      _$TicketsCubitStateCopyWithImpl<$Res, TicketsCubitState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<TicketEntity> tickets});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$TicketsCubitStateCopyWithImpl<$Res, $Val extends TicketsCubitState>
    implements $TicketsCubitStateCopyWith<$Res> {
  _$TicketsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketsCubitStateImplCopyWith<$Res>
    implements $TicketsCubitStateCopyWith<$Res> {
  factory _$$TicketsCubitStateImplCopyWith(_$TicketsCubitStateImpl value,
          $Res Function(_$TicketsCubitStateImpl) then) =
      __$$TicketsCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<TicketEntity> tickets});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$TicketsCubitStateImplCopyWithImpl<$Res>
    extends _$TicketsCubitStateCopyWithImpl<$Res, _$TicketsCubitStateImpl>
    implements _$$TicketsCubitStateImplCopyWith<$Res> {
  __$$TicketsCubitStateImplCopyWithImpl(_$TicketsCubitStateImpl _value,
      $Res Function(_$TicketsCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tickets = null,
  }) {
    return _then(_$TicketsCubitStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketEntity>,
    ));
  }
}

/// @nodoc

class _$TicketsCubitStateImpl implements _TicketsCubitState {
  const _$TicketsCubitStateImpl(
      {this.status = const BaseStatus.initial(),
      final List<TicketEntity> tickets = const []})
      : _tickets = tickets;

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<TicketEntity> _tickets;
  @override
  @JsonKey()
  List<TicketEntity> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'TicketsCubitState(status: $status, tickets: $tickets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsCubitStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsCubitStateImplCopyWith<_$TicketsCubitStateImpl> get copyWith =>
      __$$TicketsCubitStateImplCopyWithImpl<_$TicketsCubitStateImpl>(
          this, _$identity);
}

abstract class _TicketsCubitState implements TicketsCubitState {
  const factory _TicketsCubitState(
      {final BaseStatus<dynamic> status,
      final List<TicketEntity> tickets}) = _$TicketsCubitStateImpl;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<TicketEntity> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$TicketsCubitStateImplCopyWith<_$TicketsCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
