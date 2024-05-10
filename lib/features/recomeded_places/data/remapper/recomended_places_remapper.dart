import 'package:cheap_tickets_app/features/recomeded_places/data/models/recomended_place_model.dart';
import 'package:cheap_tickets_app/features/recomeded_places/domain/entity/recomended_place_entity.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RecomendedPlacesRemapper {
  RecomendedPlaceEntity fromModel(RecomendedPlaceModel recomendedPlaceModel) {
    return RecomendedPlaceEntity(
      title: recomendedPlaceModel.title,
      image: recomendedPlaceModel.image,
    );
  }
}
