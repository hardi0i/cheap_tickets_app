import 'dart:developer';

import 'package:cheap_tickets_app/core/error/exceptions.dart';
import 'package:cheap_tickets_app/features/recomeded_places/data/data_sources/recomended_places_remote_data_source.dart';
import 'package:cheap_tickets_app/features/recomeded_places/data/remapper/recomended_places_remapper.dart';
import 'package:cheap_tickets_app/features/recomeded_places/domain/entity/recomended_place_entity.dart';
import 'package:cheap_tickets_app/features/recomeded_places/domain/repository/recomended_places_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RecomendedPlacesRepository)
class RecomendedPlacesrRepositoryImpl implements RecomendedPlacesRepository {
  RecomendedPlacesrRepositoryImpl(
    this._dataSource,
    this._remapper,
  );

  final RecomendedPlacesRemapper _remapper;
  final RecomendedPlacesRemoteDataSource _dataSource;

  @override
  Future<List<RecomendedPlaceEntity>> getListOfRecommendations() async {
    try {
      final wrapper = await _dataSource.recomendedList();

      return wrapper.recomendedPlaces
          .map(
            (model) => _remapper.fromModel(model),
          )
          .toList();
    } catch (e, st) {
      log(e.toString());
      log(st.toString());
      throw GenericException(message: e.toString());
    }
  }
}
