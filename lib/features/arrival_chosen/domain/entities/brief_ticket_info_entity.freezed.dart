// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brief_ticket_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BriefTicketInfoEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get timeRange => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BriefTicketInfoEntityCopyWith<BriefTicketInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BriefTicketInfoEntityCopyWith<$Res> {
  factory $BriefTicketInfoEntityCopyWith(BriefTicketInfoEntity value,
          $Res Function(BriefTicketInfoEntity) then) =
      _$BriefTicketInfoEntityCopyWithImpl<$Res, BriefTicketInfoEntity>;
  @useResult
  $Res call({int id, String title, String price, String timeRange});
}

/// @nodoc
class _$BriefTicketInfoEntityCopyWithImpl<$Res,
        $Val extends BriefTicketInfoEntity>
    implements $BriefTicketInfoEntityCopyWith<$Res> {
  _$BriefTicketInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? timeRange = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      timeRange: null == timeRange
          ? _value.timeRange
          : timeRange // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BriefTicketInfoEntityImplCopyWith<$Res>
    implements $BriefTicketInfoEntityCopyWith<$Res> {
  factory _$$BriefTicketInfoEntityImplCopyWith(
          _$BriefTicketInfoEntityImpl value,
          $Res Function(_$BriefTicketInfoEntityImpl) then) =
      __$$BriefTicketInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String price, String timeRange});
}

/// @nodoc
class __$$BriefTicketInfoEntityImplCopyWithImpl<$Res>
    extends _$BriefTicketInfoEntityCopyWithImpl<$Res,
        _$BriefTicketInfoEntityImpl>
    implements _$$BriefTicketInfoEntityImplCopyWith<$Res> {
  __$$BriefTicketInfoEntityImplCopyWithImpl(_$BriefTicketInfoEntityImpl _value,
      $Res Function(_$BriefTicketInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? timeRange = null,
  }) {
    return _then(_$BriefTicketInfoEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      timeRange: null == timeRange
          ? _value.timeRange
          : timeRange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BriefTicketInfoEntityImpl implements _BriefTicketInfoEntity {
  const _$BriefTicketInfoEntityImpl(
      {required this.id,
      required this.title,
      required this.price,
      required this.timeRange});

  @override
  final int id;
  @override
  final String title;
  @override
  final String price;
  @override
  final String timeRange;

  @override
  String toString() {
    return 'BriefTicketInfoEntity(id: $id, title: $title, price: $price, timeRange: $timeRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BriefTicketInfoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.timeRange, timeRange) ||
                other.timeRange == timeRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, timeRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BriefTicketInfoEntityImplCopyWith<_$BriefTicketInfoEntityImpl>
      get copyWith => __$$BriefTicketInfoEntityImplCopyWithImpl<
          _$BriefTicketInfoEntityImpl>(this, _$identity);
}

abstract class _BriefTicketInfoEntity implements BriefTicketInfoEntity {
  const factory _BriefTicketInfoEntity(
      {required final int id,
      required final String title,
      required final String price,
      required final String timeRange}) = _$BriefTicketInfoEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get price;
  @override
  String get timeRange;
  @override
  @JsonKey(ignore: true)
  _$$BriefTicketInfoEntityImplCopyWith<_$BriefTicketInfoEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
