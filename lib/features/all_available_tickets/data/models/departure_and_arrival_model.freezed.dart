// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departure_and_arrival_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DepartureAndArriavalModel _$DepartureAndArriavalModelFromJson(
    Map<String, dynamic> json) {
  return _DepartureAndArriavalModel.fromJson(json);
}

/// @nodoc
mixin _$DepartureAndArriavalModel {
  String get town => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get airport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartureAndArriavalModelCopyWith<DepartureAndArriavalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartureAndArriavalModelCopyWith<$Res> {
  factory $DepartureAndArriavalModelCopyWith(DepartureAndArriavalModel value,
          $Res Function(DepartureAndArriavalModel) then) =
      _$DepartureAndArriavalModelCopyWithImpl<$Res, DepartureAndArriavalModel>;
  @useResult
  $Res call({String town, String date, String airport});
}

/// @nodoc
class _$DepartureAndArriavalModelCopyWithImpl<$Res,
        $Val extends DepartureAndArriavalModel>
    implements $DepartureAndArriavalModelCopyWith<$Res> {
  _$DepartureAndArriavalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? town = null,
    Object? date = null,
    Object? airport = null,
  }) {
    return _then(_value.copyWith(
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartureAndArriavalModelImplCopyWith<$Res>
    implements $DepartureAndArriavalModelCopyWith<$Res> {
  factory _$$DepartureAndArriavalModelImplCopyWith(
          _$DepartureAndArriavalModelImpl value,
          $Res Function(_$DepartureAndArriavalModelImpl) then) =
      __$$DepartureAndArriavalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String town, String date, String airport});
}

/// @nodoc
class __$$DepartureAndArriavalModelImplCopyWithImpl<$Res>
    extends _$DepartureAndArriavalModelCopyWithImpl<$Res,
        _$DepartureAndArriavalModelImpl>
    implements _$$DepartureAndArriavalModelImplCopyWith<$Res> {
  __$$DepartureAndArriavalModelImplCopyWithImpl(
      _$DepartureAndArriavalModelImpl _value,
      $Res Function(_$DepartureAndArriavalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? town = null,
    Object? date = null,
    Object? airport = null,
  }) {
    return _then(_$DepartureAndArriavalModelImpl(
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartureAndArriavalModelImpl implements _DepartureAndArriavalModel {
  const _$DepartureAndArriavalModelImpl(
      {required this.town, required this.date, required this.airport});

  factory _$DepartureAndArriavalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartureAndArriavalModelImplFromJson(json);

  @override
  final String town;
  @override
  final String date;
  @override
  final String airport;

  @override
  String toString() {
    return 'DepartureAndArriavalModel(town: $town, date: $date, airport: $airport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartureAndArriavalModelImpl &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.airport, airport) || other.airport == airport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, town, date, airport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartureAndArriavalModelImplCopyWith<_$DepartureAndArriavalModelImpl>
      get copyWith => __$$DepartureAndArriavalModelImplCopyWithImpl<
          _$DepartureAndArriavalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartureAndArriavalModelImplToJson(
      this,
    );
  }
}

abstract class _DepartureAndArriavalModel implements DepartureAndArriavalModel {
  const factory _DepartureAndArriavalModel(
      {required final String town,
      required final String date,
      required final String airport}) = _$DepartureAndArriavalModelImpl;

  factory _DepartureAndArriavalModel.fromJson(Map<String, dynamic> json) =
      _$DepartureAndArriavalModelImpl.fromJson;

  @override
  String get town;
  @override
  String get date;
  @override
  String get airport;
  @override
  @JsonKey(ignore: true)
  _$$DepartureAndArriavalModelImplCopyWith<_$DepartureAndArriavalModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
