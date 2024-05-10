// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recomended_place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecomendedPlaceModel _$RecomendedPlaceModelFromJson(Map<String, dynamic> json) {
  return _RecomendedPlaceModel.fromJson(json);
}

/// @nodoc
mixin _$RecomendedPlaceModel {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecomendedPlaceModelCopyWith<RecomendedPlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecomendedPlaceModelCopyWith<$Res> {
  factory $RecomendedPlaceModelCopyWith(RecomendedPlaceModel value,
          $Res Function(RecomendedPlaceModel) then) =
      _$RecomendedPlaceModelCopyWithImpl<$Res, RecomendedPlaceModel>;
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class _$RecomendedPlaceModelCopyWithImpl<$Res,
        $Val extends RecomendedPlaceModel>
    implements $RecomendedPlaceModelCopyWith<$Res> {
  _$RecomendedPlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecomendedPlaceModelImplCopyWith<$Res>
    implements $RecomendedPlaceModelCopyWith<$Res> {
  factory _$$RecomendedPlaceModelImplCopyWith(_$RecomendedPlaceModelImpl value,
          $Res Function(_$RecomendedPlaceModelImpl) then) =
      __$$RecomendedPlaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class __$$RecomendedPlaceModelImplCopyWithImpl<$Res>
    extends _$RecomendedPlaceModelCopyWithImpl<$Res, _$RecomendedPlaceModelImpl>
    implements _$$RecomendedPlaceModelImplCopyWith<$Res> {
  __$$RecomendedPlaceModelImplCopyWithImpl(_$RecomendedPlaceModelImpl _value,
      $Res Function(_$RecomendedPlaceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$RecomendedPlaceModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecomendedPlaceModelImpl implements _RecomendedPlaceModel {
  const _$RecomendedPlaceModelImpl({required this.title, required this.image});

  factory _$RecomendedPlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecomendedPlaceModelImplFromJson(json);

  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'RecomendedPlaceModel(title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecomendedPlaceModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecomendedPlaceModelImplCopyWith<_$RecomendedPlaceModelImpl>
      get copyWith =>
          __$$RecomendedPlaceModelImplCopyWithImpl<_$RecomendedPlaceModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecomendedPlaceModelImplToJson(
      this,
    );
  }
}

abstract class _RecomendedPlaceModel implements RecomendedPlaceModel {
  const factory _RecomendedPlaceModel(
      {required final String title,
      required final String image}) = _$RecomendedPlaceModelImpl;

  factory _RecomendedPlaceModel.fromJson(Map<String, dynamic> json) =
      _$RecomendedPlaceModelImpl.fromJson;

  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$RecomendedPlaceModelImplCopyWith<_$RecomendedPlaceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
