// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recomded_places_wrapper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecomendedPlacesWrapperModel _$RecomendedPlacesWrapperModelFromJson(
    Map<String, dynamic> json) {
  return _RecomendedPlacesWrapperModel.fromJson(json);
}

/// @nodoc
mixin _$RecomendedPlacesWrapperModel {
  @JsonKey(name: 'recomended_places')
  List<RecomendedPlaceModel> get recomendedPlaces =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecomendedPlacesWrapperModelCopyWith<RecomendedPlacesWrapperModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecomendedPlacesWrapperModelCopyWith<$Res> {
  factory $RecomendedPlacesWrapperModelCopyWith(
          RecomendedPlacesWrapperModel value,
          $Res Function(RecomendedPlacesWrapperModel) then) =
      _$RecomendedPlacesWrapperModelCopyWithImpl<$Res,
          RecomendedPlacesWrapperModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'recomended_places')
      List<RecomendedPlaceModel> recomendedPlaces});
}

/// @nodoc
class _$RecomendedPlacesWrapperModelCopyWithImpl<$Res,
        $Val extends RecomendedPlacesWrapperModel>
    implements $RecomendedPlacesWrapperModelCopyWith<$Res> {
  _$RecomendedPlacesWrapperModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recomendedPlaces = null,
  }) {
    return _then(_value.copyWith(
      recomendedPlaces: null == recomendedPlaces
          ? _value.recomendedPlaces
          : recomendedPlaces // ignore: cast_nullable_to_non_nullable
              as List<RecomendedPlaceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecomendedPlacesWrapperModelImplCopyWith<$Res>
    implements $RecomendedPlacesWrapperModelCopyWith<$Res> {
  factory _$$RecomendedPlacesWrapperModelImplCopyWith(
          _$RecomendedPlacesWrapperModelImpl value,
          $Res Function(_$RecomendedPlacesWrapperModelImpl) then) =
      __$$RecomendedPlacesWrapperModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'recomended_places')
      List<RecomendedPlaceModel> recomendedPlaces});
}

/// @nodoc
class __$$RecomendedPlacesWrapperModelImplCopyWithImpl<$Res>
    extends _$RecomendedPlacesWrapperModelCopyWithImpl<$Res,
        _$RecomendedPlacesWrapperModelImpl>
    implements _$$RecomendedPlacesWrapperModelImplCopyWith<$Res> {
  __$$RecomendedPlacesWrapperModelImplCopyWithImpl(
      _$RecomendedPlacesWrapperModelImpl _value,
      $Res Function(_$RecomendedPlacesWrapperModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recomendedPlaces = null,
  }) {
    return _then(_$RecomendedPlacesWrapperModelImpl(
      recomendedPlaces: null == recomendedPlaces
          ? _value._recomendedPlaces
          : recomendedPlaces // ignore: cast_nullable_to_non_nullable
              as List<RecomendedPlaceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecomendedPlacesWrapperModelImpl
    implements _RecomendedPlacesWrapperModel {
  const _$RecomendedPlacesWrapperModelImpl(
      {@JsonKey(name: 'recomended_places')
      required final List<RecomendedPlaceModel> recomendedPlaces})
      : _recomendedPlaces = recomendedPlaces;

  factory _$RecomendedPlacesWrapperModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RecomendedPlacesWrapperModelImplFromJson(json);

  final List<RecomendedPlaceModel> _recomendedPlaces;
  @override
  @JsonKey(name: 'recomended_places')
  List<RecomendedPlaceModel> get recomendedPlaces {
    if (_recomendedPlaces is EqualUnmodifiableListView)
      return _recomendedPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recomendedPlaces);
  }

  @override
  String toString() {
    return 'RecomendedPlacesWrapperModel(recomendedPlaces: $recomendedPlaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecomendedPlacesWrapperModelImpl &&
            const DeepCollectionEquality()
                .equals(other._recomendedPlaces, _recomendedPlaces));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recomendedPlaces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecomendedPlacesWrapperModelImplCopyWith<
          _$RecomendedPlacesWrapperModelImpl>
      get copyWith => __$$RecomendedPlacesWrapperModelImplCopyWithImpl<
          _$RecomendedPlacesWrapperModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecomendedPlacesWrapperModelImplToJson(
      this,
    );
  }
}

abstract class _RecomendedPlacesWrapperModel
    implements RecomendedPlacesWrapperModel {
  const factory _RecomendedPlacesWrapperModel(
          {@JsonKey(name: 'recomended_places')
          required final List<RecomendedPlaceModel> recomendedPlaces}) =
      _$RecomendedPlacesWrapperModelImpl;

  factory _RecomendedPlacesWrapperModel.fromJson(Map<String, dynamic> json) =
      _$RecomendedPlacesWrapperModelImpl.fromJson;

  @override
  @JsonKey(name: 'recomended_places')
  List<RecomendedPlaceModel> get recomendedPlaces;
  @override
  @JsonKey(ignore: true)
  _$$RecomendedPlacesWrapperModelImplCopyWith<
          _$RecomendedPlacesWrapperModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
