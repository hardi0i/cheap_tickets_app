// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) {
  return _TicketModel.fromJson(json);
}

/// @nodoc
mixin _$TicketModel {
  int get id => throw _privateConstructorUsedError;
  String? get badge => throw _privateConstructorUsedError;
  Map<String, dynamic> get price => throw _privateConstructorUsedError;
  DepartureAndArriavalModel get departure => throw _privateConstructorUsedError;
  DepartureAndArriavalModel get arrival => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_transfer')
  bool get hasTransfer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
          TicketModel value, $Res Function(TicketModel) then) =
      _$TicketModelCopyWithImpl<$Res, TicketModel>;
  @useResult
  $Res call(
      {int id,
      String? badge,
      Map<String, dynamic> price,
      DepartureAndArriavalModel departure,
      DepartureAndArriavalModel arrival,
      String company,
      @JsonKey(name: 'has_transfer') bool hasTransfer});

  $DepartureAndArriavalModelCopyWith<$Res> get departure;
  $DepartureAndArriavalModelCopyWith<$Res> get arrival;
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res, $Val extends TicketModel>
    implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? badge = freezed,
    Object? price = null,
    Object? departure = null,
    Object? arrival = null,
    Object? company = null,
    Object? hasTransfer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DepartureAndArriavalModel,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as DepartureAndArriavalModel,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      hasTransfer: null == hasTransfer
          ? _value.hasTransfer
          : hasTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartureAndArriavalModelCopyWith<$Res> get departure {
    return $DepartureAndArriavalModelCopyWith<$Res>(_value.departure, (value) {
      return _then(_value.copyWith(departure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartureAndArriavalModelCopyWith<$Res> get arrival {
    return $DepartureAndArriavalModelCopyWith<$Res>(_value.arrival, (value) {
      return _then(_value.copyWith(arrival: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketModelImplCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$$TicketModelImplCopyWith(
          _$TicketModelImpl value, $Res Function(_$TicketModelImpl) then) =
      __$$TicketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? badge,
      Map<String, dynamic> price,
      DepartureAndArriavalModel departure,
      DepartureAndArriavalModel arrival,
      String company,
      @JsonKey(name: 'has_transfer') bool hasTransfer});

  @override
  $DepartureAndArriavalModelCopyWith<$Res> get departure;
  @override
  $DepartureAndArriavalModelCopyWith<$Res> get arrival;
}

/// @nodoc
class __$$TicketModelImplCopyWithImpl<$Res>
    extends _$TicketModelCopyWithImpl<$Res, _$TicketModelImpl>
    implements _$$TicketModelImplCopyWith<$Res> {
  __$$TicketModelImplCopyWithImpl(
      _$TicketModelImpl _value, $Res Function(_$TicketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? badge = freezed,
    Object? price = null,
    Object? departure = null,
    Object? arrival = null,
    Object? company = null,
    Object? hasTransfer = null,
  }) {
    return _then(_$TicketModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value._price
          : price // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DepartureAndArriavalModel,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as DepartureAndArriavalModel,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      hasTransfer: null == hasTransfer
          ? _value.hasTransfer
          : hasTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketModelImpl implements _TicketModel {
  const _$TicketModelImpl(
      {required this.id,
      required this.badge,
      required final Map<String, dynamic> price,
      required this.departure,
      required this.arrival,
      required this.company,
      @JsonKey(name: 'has_transfer') required this.hasTransfer})
      : _price = price;

  factory _$TicketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? badge;
  final Map<String, dynamic> _price;
  @override
  Map<String, dynamic> get price {
    if (_price is EqualUnmodifiableMapView) return _price;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_price);
  }

  @override
  final DepartureAndArriavalModel departure;
  @override
  final DepartureAndArriavalModel arrival;
  @override
  final String company;
  @override
  @JsonKey(name: 'has_transfer')
  final bool hasTransfer;

  @override
  String toString() {
    return 'TicketModel(id: $id, badge: $badge, price: $price, departure: $departure, arrival: $arrival, company: $company, hasTransfer: $hasTransfer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.badge, badge) || other.badge == badge) &&
            const DeepCollectionEquality().equals(other._price, _price) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrival, arrival) || other.arrival == arrival) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.hasTransfer, hasTransfer) ||
                other.hasTransfer == hasTransfer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      badge,
      const DeepCollectionEquality().hash(_price),
      departure,
      arrival,
      company,
      hasTransfer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      __$$TicketModelImplCopyWithImpl<_$TicketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketModelImplToJson(
      this,
    );
  }
}

abstract class _TicketModel implements TicketModel {
  const factory _TicketModel(
          {required final int id,
          required final String? badge,
          required final Map<String, dynamic> price,
          required final DepartureAndArriavalModel departure,
          required final DepartureAndArriavalModel arrival,
          required final String company,
          @JsonKey(name: 'has_transfer') required final bool hasTransfer}) =
      _$TicketModelImpl;

  factory _TicketModel.fromJson(Map<String, dynamic> json) =
      _$TicketModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get badge;
  @override
  Map<String, dynamic> get price;
  @override
  DepartureAndArriavalModel get departure;
  @override
  DepartureAndArriavalModel get arrival;
  @override
  String get company;
  @override
  @JsonKey(name: 'has_transfer')
  bool get hasTransfer;
  @override
  @JsonKey(ignore: true)
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
