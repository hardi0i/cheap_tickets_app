import 'package:cheap_tickets_app/core/use_cases/use_case.dart';
import 'package:cheap_tickets_app/features/recomeded_places/domain/entity/recomended_place_entity.dart';
import 'package:cheap_tickets_app/features/recomeded_places/domain/repository/recomended_places_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetRecomendedPlacesUseCase
    extends UseCase<List<RecomendedPlaceEntity>, void> {
  GetRecomendedPlacesUseCase(this._placesRepository);

  final RecomendedPlacesRepository _placesRepository;

  @override
  Future<List<RecomendedPlaceEntity>> call({void params}) async {
    final recomendedPlaces = _placesRepository.getListOfRecommendations();

    return recomendedPlaces;
  }
}
