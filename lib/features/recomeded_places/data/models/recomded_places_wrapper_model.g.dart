// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recomded_places_wrapper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecomendedPlacesWrapperModelImpl _$$RecomendedPlacesWrapperModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecomendedPlacesWrapperModelImpl(
      recomendedPlaces: (json['recomended_places'] as List<dynamic>)
          .map((e) => RecomendedPlaceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecomendedPlacesWrapperModelImplToJson(
        _$RecomendedPlacesWrapperModelImpl instance) =>
    <String, dynamic>{
      'recomended_places': instance.recomendedPlaces,
    };
