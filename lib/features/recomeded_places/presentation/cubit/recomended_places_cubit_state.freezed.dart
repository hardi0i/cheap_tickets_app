// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recomended_places_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecomendedPlacesCubitState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<RecomendedPlaceEntity> get recomendedPlaces =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecomendedPlacesCubitStateCopyWith<RecomendedPlacesCubitState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecomendedPlacesCubitStateCopyWith<$Res> {
  factory $RecomendedPlacesCubitStateCopyWith(RecomendedPlacesCubitState value,
          $Res Function(RecomendedPlacesCubitState) then) =
      _$RecomendedPlacesCubitStateCopyWithImpl<$Res,
          RecomendedPlacesCubitState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<RecomendedPlaceEntity> recomendedPlaces});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$RecomendedPlacesCubitStateCopyWithImpl<$Res,
        $Val extends RecomendedPlacesCubitState>
    implements $RecomendedPlacesCubitStateCopyWith<$Res> {
  _$RecomendedPlacesCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? recomendedPlaces = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      recomendedPlaces: null == recomendedPlaces
          ? _value.recomendedPlaces
          : recomendedPlaces // ignore: cast_nullable_to_non_nullable
              as List<RecomendedPlaceEntity>,
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
abstract class _$$RecomendedPlacesCubitStateImplCopyWith<$Res>
    implements $RecomendedPlacesCubitStateCopyWith<$Res> {
  factory _$$RecomendedPlacesCubitStateImplCopyWith(
          _$RecomendedPlacesCubitStateImpl value,
          $Res Function(_$RecomendedPlacesCubitStateImpl) then) =
      __$$RecomendedPlacesCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<RecomendedPlaceEntity> recomendedPlaces});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$RecomendedPlacesCubitStateImplCopyWithImpl<$Res>
    extends _$RecomendedPlacesCubitStateCopyWithImpl<$Res,
        _$RecomendedPlacesCubitStateImpl>
    implements _$$RecomendedPlacesCubitStateImplCopyWith<$Res> {
  __$$RecomendedPlacesCubitStateImplCopyWithImpl(
      _$RecomendedPlacesCubitStateImpl _value,
      $Res Function(_$RecomendedPlacesCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? recomendedPlaces = null,
  }) {
    return _then(_$RecomendedPlacesCubitStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      recomendedPlaces: null == recomendedPlaces
          ? _value._recomendedPlaces
          : recomendedPlaces // ignore: cast_nullable_to_non_nullable
              as List<RecomendedPlaceEntity>,
    ));
  }
}

/// @nodoc

class _$RecomendedPlacesCubitStateImpl implements _RecomendedPlacesCubitState {
  const _$RecomendedPlacesCubitStateImpl(
      {this.status = const BaseStatus.initial(),
      final List<RecomendedPlaceEntity> recomendedPlaces = const []})
      : _recomendedPlaces = recomendedPlaces;

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<RecomendedPlaceEntity> _recomendedPlaces;
  @override
  @JsonKey()
  List<RecomendedPlaceEntity> get recomendedPlaces {
    if (_recomendedPlaces is EqualUnmodifiableListView)
      return _recomendedPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recomendedPlaces);
  }

  @override
  String toString() {
    return 'RecomendedPlacesCubitState(status: $status, recomendedPlaces: $recomendedPlaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecomendedPlacesCubitStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._recomendedPlaces, _recomendedPlaces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_recomendedPlaces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecomendedPlacesCubitStateImplCopyWith<_$RecomendedPlacesCubitStateImpl>
      get copyWith => __$$RecomendedPlacesCubitStateImplCopyWithImpl<
          _$RecomendedPlacesCubitStateImpl>(this, _$identity);
}

abstract class _RecomendedPlacesCubitState
    implements RecomendedPlacesCubitState {
  const factory _RecomendedPlacesCubitState(
          {final BaseStatus<dynamic> status,
          final List<RecomendedPlaceEntity> recomendedPlaces}) =
      _$RecomendedPlacesCubitStateImpl;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<RecomendedPlaceEntity> get recomendedPlaces;
  @override
  @JsonKey(ignore: true)
  _$$RecomendedPlacesCubitStateImplCopyWith<_$RecomendedPlacesCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
