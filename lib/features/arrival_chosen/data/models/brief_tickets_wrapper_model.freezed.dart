// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brief_tickets_wrapper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BriefTicketsWrapperModel _$BriefTicketsWrapperModelFromJson(
    Map<String, dynamic> json) {
  return _BriefTicketsWrapperModel.fromJson(json);
}

/// @nodoc
mixin _$BriefTicketsWrapperModel {
  @JsonKey(name: 'tickets_offers')
  List<BriefTicketInfoModel> get ticketsOffers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BriefTicketsWrapperModelCopyWith<BriefTicketsWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BriefTicketsWrapperModelCopyWith<$Res> {
  factory $BriefTicketsWrapperModelCopyWith(BriefTicketsWrapperModel value,
          $Res Function(BriefTicketsWrapperModel) then) =
      _$BriefTicketsWrapperModelCopyWithImpl<$Res, BriefTicketsWrapperModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tickets_offers')
      List<BriefTicketInfoModel> ticketsOffers});
}

/// @nodoc
class _$BriefTicketsWrapperModelCopyWithImpl<$Res,
        $Val extends BriefTicketsWrapperModel>
    implements $BriefTicketsWrapperModelCopyWith<$Res> {
  _$BriefTicketsWrapperModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketsOffers = null,
  }) {
    return _then(_value.copyWith(
      ticketsOffers: null == ticketsOffers
          ? _value.ticketsOffers
          : ticketsOffers // ignore: cast_nullable_to_non_nullable
              as List<BriefTicketInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BriefTicketsWrapperModelImplCopyWith<$Res>
    implements $BriefTicketsWrapperModelCopyWith<$Res> {
  factory _$$BriefTicketsWrapperModelImplCopyWith(
          _$BriefTicketsWrapperModelImpl value,
          $Res Function(_$BriefTicketsWrapperModelImpl) then) =
      __$$BriefTicketsWrapperModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tickets_offers')
      List<BriefTicketInfoModel> ticketsOffers});
}

/// @nodoc
class __$$BriefTicketsWrapperModelImplCopyWithImpl<$Res>
    extends _$BriefTicketsWrapperModelCopyWithImpl<$Res,
        _$BriefTicketsWrapperModelImpl>
    implements _$$BriefTicketsWrapperModelImplCopyWith<$Res> {
  __$$BriefTicketsWrapperModelImplCopyWithImpl(
      _$BriefTicketsWrapperModelImpl _value,
      $Res Function(_$BriefTicketsWrapperModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketsOffers = null,
  }) {
    return _then(_$BriefTicketsWrapperModelImpl(
      ticketsOffers: null == ticketsOffers
          ? _value._ticketsOffers
          : ticketsOffers // ignore: cast_nullable_to_non_nullable
              as List<BriefTicketInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BriefTicketsWrapperModelImpl implements _BriefTicketsWrapperModel {
  const _$BriefTicketsWrapperModelImpl(
      {@JsonKey(name: 'tickets_offers')
      required final List<BriefTicketInfoModel> ticketsOffers})
      : _ticketsOffers = ticketsOffers;

  factory _$BriefTicketsWrapperModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BriefTicketsWrapperModelImplFromJson(json);

  final List<BriefTicketInfoModel> _ticketsOffers;
  @override
  @JsonKey(name: 'tickets_offers')
  List<BriefTicketInfoModel> get ticketsOffers {
    if (_ticketsOffers is EqualUnmodifiableListView) return _ticketsOffers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticketsOffers);
  }

  @override
  String toString() {
    return 'BriefTicketsWrapperModel(ticketsOffers: $ticketsOffers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BriefTicketsWrapperModelImpl &&
            const DeepCollectionEquality()
                .equals(other._ticketsOffers, _ticketsOffers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ticketsOffers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BriefTicketsWrapperModelImplCopyWith<_$BriefTicketsWrapperModelImpl>
      get copyWith => __$$BriefTicketsWrapperModelImplCopyWithImpl<
          _$BriefTicketsWrapperModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BriefTicketsWrapperModelImplToJson(
      this,
    );
  }
}

abstract class _BriefTicketsWrapperModel implements BriefTicketsWrapperModel {
  const factory _BriefTicketsWrapperModel(
          {@JsonKey(name: 'tickets_offers')
          required final List<BriefTicketInfoModel> ticketsOffers}) =
      _$BriefTicketsWrapperModelImpl;

  factory _BriefTicketsWrapperModel.fromJson(Map<String, dynamic> json) =
      _$BriefTicketsWrapperModelImpl.fromJson;

  @override
  @JsonKey(name: 'tickets_offers')
  List<BriefTicketInfoModel> get ticketsOffers;
  @override
  @JsonKey(ignore: true)
  _$$BriefTicketsWrapperModelImplCopyWith<_$BriefTicketsWrapperModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
