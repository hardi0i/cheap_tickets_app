import 'package:freezed_annotation/freezed_annotation.dart';

part 'recomended_place_model.freezed.dart';
part 'recomended_place_model.g.dart';

@freezed
class RecomendedPlaceModel with _$RecomendedPlaceModel {
  const factory RecomendedPlaceModel({
    required String title,
    required String image,
  }) = _RecomendedPlaceModel;

  factory RecomendedPlaceModel.fromJson(Map<String, dynamic> json) =>
      _$RecomendedPlaceModelFromJson(json);
}
