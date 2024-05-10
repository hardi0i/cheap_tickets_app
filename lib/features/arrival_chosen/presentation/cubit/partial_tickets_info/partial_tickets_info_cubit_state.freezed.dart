// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partial_tickets_info_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartialTicketsInfoCubitState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<BriefTicketInfoEntity> get partialTicketsInfo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartialTicketsInfoCubitStateCopyWith<PartialTicketsInfoCubitState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartialTicketsInfoCubitStateCopyWith<$Res> {
  factory $PartialTicketsInfoCubitStateCopyWith(
          PartialTicketsInfoCubitState value,
          $Res Function(PartialTicketsInfoCubitState) then) =
      _$PartialTicketsInfoCubitStateCopyWithImpl<$Res,
          PartialTicketsInfoCubitState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<BriefTicketInfoEntity> partialTicketsInfo});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$PartialTicketsInfoCubitStateCopyWithImpl<$Res,
        $Val extends PartialTicketsInfoCubitState>
    implements $PartialTicketsInfoCubitStateCopyWith<$Res> {
  _$PartialTicketsInfoCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? partialTicketsInfo = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      partialTicketsInfo: null == partialTicketsInfo
          ? _value.partialTicketsInfo
          : partialTicketsInfo // ignore: cast_nullable_to_non_nullable
              as List<BriefTicketInfoEntity>,
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
abstract class _$$PartialTicketsInfoCubitStateImplCopyWith<$Res>
    implements $PartialTicketsInfoCubitStateCopyWith<$Res> {
  factory _$$PartialTicketsInfoCubitStateImplCopyWith(
          _$PartialTicketsInfoCubitStateImpl value,
          $Res Function(_$PartialTicketsInfoCubitStateImpl) then) =
      __$$PartialTicketsInfoCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<BriefTicketInfoEntity> partialTicketsInfo});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$PartialTicketsInfoCubitStateImplCopyWithImpl<$Res>
    extends _$PartialTicketsInfoCubitStateCopyWithImpl<$Res,
        _$PartialTicketsInfoCubitStateImpl>
    implements _$$PartialTicketsInfoCubitStateImplCopyWith<$Res> {
  __$$PartialTicketsInfoCubitStateImplCopyWithImpl(
      _$PartialTicketsInfoCubitStateImpl _value,
      $Res Function(_$PartialTicketsInfoCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? partialTicketsInfo = null,
  }) {
    return _then(_$PartialTicketsInfoCubitStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      partialTicketsInfo: null == partialTicketsInfo
          ? _value._partialTicketsInfo
          : partialTicketsInfo // ignore: cast_nullable_to_non_nullable
              as List<BriefTicketInfoEntity>,
    ));
  }
}

/// @nodoc

class _$PartialTicketsInfoCubitStateImpl
    implements _PartialTicketsInfoCubitState {
  const _$PartialTicketsInfoCubitStateImpl(
      {this.status = const BaseStatus.initial(),
      final List<BriefTicketInfoEntity> partialTicketsInfo = const []})
      : _partialTicketsInfo = partialTicketsInfo;

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<BriefTicketInfoEntity> _partialTicketsInfo;
  @override
  @JsonKey()
  List<BriefTicketInfoEntity> get partialTicketsInfo {
    if (_partialTicketsInfo is EqualUnmodifiableListView)
      return _partialTicketsInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partialTicketsInfo);
  }

  @override
  String toString() {
    return 'PartialTicketsInfoCubitState(status: $status, partialTicketsInfo: $partialTicketsInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartialTicketsInfoCubitStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._partialTicketsInfo, _partialTicketsInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_partialTicketsInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartialTicketsInfoCubitStateImplCopyWith<
          _$PartialTicketsInfoCubitStateImpl>
      get copyWith => __$$PartialTicketsInfoCubitStateImplCopyWithImpl<
          _$PartialTicketsInfoCubitStateImpl>(this, _$identity);
}

abstract class _PartialTicketsInfoCubitState
    implements PartialTicketsInfoCubitState {
  const factory _PartialTicketsInfoCubitState(
          {final BaseStatus<dynamic> status,
          final List<BriefTicketInfoEntity> partialTicketsInfo}) =
      _$PartialTicketsInfoCubitStateImpl;

  @override
  BaseStatus<dynamic> get status;
  @override
  List<BriefTicketInfoEntity> get partialTicketsInfo;
  @override
  @JsonKey(ignore: true)
  _$$PartialTicketsInfoCubitStateImplCopyWith<
          _$PartialTicketsInfoCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
