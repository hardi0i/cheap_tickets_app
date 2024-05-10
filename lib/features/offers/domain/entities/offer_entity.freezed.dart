// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OfferEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get town => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfferEntityCopyWith<OfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferEntityCopyWith<$Res> {
  factory $OfferEntityCopyWith(
          OfferEntity value, $Res Function(OfferEntity) then) =
      _$OfferEntityCopyWithImpl<$Res, OfferEntity>;
  @useResult
  $Res call({int id, String title, String town, String price});
}

/// @nodoc
class _$OfferEntityCopyWithImpl<$Res, $Val extends OfferEntity>
    implements $OfferEntityCopyWith<$Res> {
  _$OfferEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? town = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferEntityImplCopyWith<$Res>
    implements $OfferEntityCopyWith<$Res> {
  factory _$$OfferEntityImplCopyWith(
          _$OfferEntityImpl value, $Res Function(_$OfferEntityImpl) then) =
      __$$OfferEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String town, String price});
}

/// @nodoc
class __$$OfferEntityImplCopyWithImpl<$Res>
    extends _$OfferEntityCopyWithImpl<$Res, _$OfferEntityImpl>
    implements _$$OfferEntityImplCopyWith<$Res> {
  __$$OfferEntityImplCopyWithImpl(
      _$OfferEntityImpl _value, $Res Function(_$OfferEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? town = null,
    Object? price = null,
  }) {
    return _then(_$OfferEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OfferEntityImpl implements _OfferEntity {
  const _$OfferEntityImpl(
      {required this.id,
      required this.title,
      required this.town,
      required this.price});

  @override
  final int id;
  @override
  final String title;
  @override
  final String town;
  @override
  final String price;

  @override
  String toString() {
    return 'OfferEntity(id: $id, title: $title, town: $town, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, town, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferEntityImplCopyWith<_$OfferEntityImpl> get copyWith =>
      __$$OfferEntityImplCopyWithImpl<_$OfferEntityImpl>(this, _$identity);
}

abstract class _OfferEntity implements OfferEntity {
  const factory _OfferEntity(
      {required final int id,
      required final String title,
      required final String town,
      required final String price}) = _$OfferEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get town;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$OfferEntityImplCopyWith<_$OfferEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
