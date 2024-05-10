import 'package:cheap_tickets_app/features/recomeded_places/domain/entity/recomended_place_entity.dart';

abstract interface class RecomendedPlacesRepository {
  Future<List<RecomendedPlaceEntity>> getListOfRecommendations();
}
