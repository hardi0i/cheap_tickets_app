// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_wrapper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffersWrapperModel _$OffersWrapperModelFromJson(Map<String, dynamic> json) {
  return _OffersWrapperModel.fromJson(json);
}

/// @nodoc
mixin _$OffersWrapperModel {
  List<OfferModel> get offers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffersWrapperModelCopyWith<OffersWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersWrapperModelCopyWith<$Res> {
  factory $OffersWrapperModelCopyWith(
          OffersWrapperModel value, $Res Function(OffersWrapperModel) then) =
      _$OffersWrapperModelCopyWithImpl<$Res, OffersWrapperModel>;
  @useResult
  $Res call({List<OfferModel> offers});
}

/// @nodoc
class _$OffersWrapperModelCopyWithImpl<$Res, $Val extends OffersWrapperModel>
    implements $OffersWrapperModelCopyWith<$Res> {
  _$OffersWrapperModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
  }) {
    return _then(_value.copyWith(
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffersWrapperModelImplCopyWith<$Res>
    implements $OffersWrapperModelCopyWith<$Res> {
  factory _$$OffersWrapperModelImplCopyWith(_$OffersWrapperModelImpl value,
          $Res Function(_$OffersWrapperModelImpl) then) =
      __$$OffersWrapperModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OfferModel> offers});
}

/// @nodoc
class __$$OffersWrapperModelImplCopyWithImpl<$Res>
    extends _$OffersWrapperModelCopyWithImpl<$Res, _$OffersWrapperModelImpl>
    implements _$$OffersWrapperModelImplCopyWith<$Res> {
  __$$OffersWrapperModelImplCopyWithImpl(_$OffersWrapperModelImpl _value,
      $Res Function(_$OffersWrapperModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
  }) {
    return _then(_$OffersWrapperModelImpl(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffersWrapperModelImpl implements _OffersWrapperModel {
  const _$OffersWrapperModelImpl({required final List<OfferModel> offers})
      : _offers = offers;

  factory _$OffersWrapperModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffersWrapperModelImplFromJson(json);

  final List<OfferModel> _offers;
  @override
  List<OfferModel> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  String toString() {
    return 'OffersWrapperModel(offers: $offers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersWrapperModelImpl &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_offers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersWrapperModelImplCopyWith<_$OffersWrapperModelImpl> get copyWith =>
      __$$OffersWrapperModelImplCopyWithImpl<_$OffersWrapperModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffersWrapperModelImplToJson(
      this,
    );
  }
}

abstract class _OffersWrapperModel implements OffersWrapperModel {
  const factory _OffersWrapperModel({required final List<OfferModel> offers}) =
      _$OffersWrapperModelImpl;

  factory _OffersWrapperModel.fromJson(Map<String, dynamic> json) =
      _$OffersWrapperModelImpl.fromJson;

  @override
  List<OfferModel> get offers;
  @override
  @JsonKey(ignore: true)
  _$$OffersWrapperModelImplCopyWith<_$OffersWrapperModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
