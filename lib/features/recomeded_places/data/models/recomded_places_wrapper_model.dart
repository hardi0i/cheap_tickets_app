import 'package:cheap_tickets_app/features/recomeded_places/data/models/recomended_place_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recomded_places_wrapper_model.freezed.dart';
part 'recomded_places_wrapper_model.g.dart';

@freezed
class RecomendedPlacesWrapperModel with _$RecomendedPlacesWrapperModel {
  const factory RecomendedPlacesWrapperModel({
    @JsonKey(name: 'recomended_places')
    required List<RecomendedPlaceModel> recomendedPlaces,
  }) = _RecomendedPlacesWrapperModel;

  factory RecomendedPlacesWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$RecomendedPlacesWrapperModelFromJson(json);
}
