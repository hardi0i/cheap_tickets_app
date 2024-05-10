// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OffersCubitState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<OfferEntity> get offers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffersCubitStateCopyWith<OffersCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersCubitStateCopyWith<$Res> {
  factory $OffersCubitStateCopyWith(
          OffersCubitState value, $Res Function(OffersCubitState) then) =
      _$OffersCubitStateCopyWithImpl<$Res, OffersCubitState>;
  @useResult
  $Res call({BaseStatus<dynamic> status, List<OfferEntity> offers});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$OffersCubitStateCopyWithImpl<$Res, $Val extends OffersCubitState>
    implements $OffersCubitStateCopyWith<$Res> {
  _$OffersCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offers = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferEntity>,
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
abstract class _$$OffersCubitStateImplCopyWith<$Res>
    implements $OffersCubitStateCopyWith<$Res> {
  factory _$$OffersCubitStateImplCopyWith(_$OffersCubitStateImpl value,
          $Res Function(_$OffersCubitStateImpl) then) =
      __$$OffersCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus<dynamic> status, List<OfferEntity> offers});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$OffersCubitStateImplCopyWithImpl<$Res>
    extends _$OffersCubitStateCopyWithImpl<$Res, _$OffersCubitStateImpl>
    implements _$$OffersCubitStateImplCopyWith<$Res> {
  __$$OffersCubitStateImplCopyWithImpl(_$OffersCubitStateImpl _value,
      $Res Function(_$OffersCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? offers = null,
  }) {
    return _then(_$OffersCubitStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferEntity>,
    ));
  }
}

/// @nodoc

class _$OffersCubitStateImpl implements _OffersCubitState {
  const _$OffersCubitStateImpl(
      {this.status = const BaseStatus.initial(),
      final List<OfferEntity> offers = const []})
      : _offers = offers;

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<OfferEntity> _offers;
  @override
  @JsonKey()
  List<OfferEntity> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  String toString() {
    return 'OffersCubitState(status: $status, offers: $offers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersCubitStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_offers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersCubitStateImplCopyWith<_$OffersCubitStateImpl> get copyWith =>
      __$$OffersCubitStateImplCopyWithImpl<_$OffersCubitStateImpl>(
          this, _$identity);
}

abstract class _OffersCubitState implements OffersCubitState {
  const factory _OffersCubitState(
      {final BaseStatus<dynamic> status,
      final List<OfferEntity> offers}) = _$OffersCubitStateImpl;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<OfferEntity> get offers;
  @override
  @JsonKey(ignore: true)
  _$$OffersCubitStateImplCopyWith<_$OffersCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
