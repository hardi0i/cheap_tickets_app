// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brief_ticket_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BriefTicketInfoModel _$BriefTicketInfoModelFromJson(Map<String, dynamic> json) {
  return _BriefTicketInfoModel.fromJson(json);
}

/// @nodoc
mixin _$BriefTicketInfoModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_range')
  List<String> get time => throw _privateConstructorUsedError;
  Map<String, dynamic> get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BriefTicketInfoModelCopyWith<BriefTicketInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BriefTicketInfoModelCopyWith<$Res> {
  factory $BriefTicketInfoModelCopyWith(BriefTicketInfoModel value,
          $Res Function(BriefTicketInfoModel) then) =
      _$BriefTicketInfoModelCopyWithImpl<$Res, BriefTicketInfoModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'time_range') List<String> time,
      Map<String, dynamic> price});
}

/// @nodoc
class _$BriefTicketInfoModelCopyWithImpl<$Res,
        $Val extends BriefTicketInfoModel>
    implements $BriefTicketInfoModelCopyWith<$Res> {
  _$BriefTicketInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? time = null,
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
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BriefTicketInfoModelImplCopyWith<$Res>
    implements $BriefTicketInfoModelCopyWith<$Res> {
  factory _$$BriefTicketInfoModelImplCopyWith(_$BriefTicketInfoModelImpl value,
          $Res Function(_$BriefTicketInfoModelImpl) then) =
      __$$BriefTicketInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'time_range') List<String> time,
      Map<String, dynamic> price});
}

/// @nodoc
class __$$BriefTicketInfoModelImplCopyWithImpl<$Res>
    extends _$BriefTicketInfoModelCopyWithImpl<$Res, _$BriefTicketInfoModelImpl>
    implements _$$BriefTicketInfoModelImplCopyWith<$Res> {
  __$$BriefTicketInfoModelImplCopyWithImpl(_$BriefTicketInfoModelImpl _value,
      $Res Function(_$BriefTicketInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? time = null,
    Object? price = null,
  }) {
    return _then(_$BriefTicketInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value._price
          : price // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BriefTicketInfoModelImpl implements _BriefTicketInfoModel {
  const _$BriefTicketInfoModelImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'time_range') required final List<String> time,
      required final Map<String, dynamic> price})
      : _time = time,
        _price = price;

  factory _$BriefTicketInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BriefTicketInfoModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  final List<String> _time;
  @override
  @JsonKey(name: 'time_range')
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final Map<String, dynamic> _price;
  @override
  Map<String, dynamic> get price {
    if (_price is EqualUnmodifiableMapView) return _price;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_price);
  }

  @override
  String toString() {
    return 'BriefTicketInfoModel(id: $id, title: $title, time: $time, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BriefTicketInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality().equals(other._price, _price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_price));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BriefTicketInfoModelImplCopyWith<_$BriefTicketInfoModelImpl>
      get copyWith =>
          __$$BriefTicketInfoModelImplCopyWithImpl<_$BriefTicketInfoModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BriefTicketInfoModelImplToJson(
      this,
    );
  }
}

abstract class _BriefTicketInfoModel implements BriefTicketInfoModel {
  const factory _BriefTicketInfoModel(
      {required final int id,
      required final String title,
      @JsonKey(name: 'time_range') required final List<String> time,
      required final Map<String, dynamic> price}) = _$BriefTicketInfoModelImpl;

  factory _BriefTicketInfoModel.fromJson(Map<String, dynamic> json) =
      _$BriefTicketInfoModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'time_range')
  List<String> get time;
  @override
  Map<String, dynamic> get price;
  @override
  @JsonKey(ignore: true)
  _$$BriefTicketInfoModelImplCopyWith<_$BriefTicketInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
