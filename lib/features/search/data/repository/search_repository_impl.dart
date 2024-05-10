import 'package:cheap_tickets_app/features/search/data/data_sources/search_local_data_source.dart';
import 'package:cheap_tickets_app/features/search/domain/repository/search_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._searchLocalDataSource);

  final SearchLocalDataSource _searchLocalDataSource;

  @override
  Future<String> getLastPlace() async {
    final savedPlace = await _searchLocalDataSource.getLastTypedPlace();

    return savedPlace;
  }

  @override
  Future<void> updateSavedPlace(String place) async {
    await _searchLocalDataSource.updateLastTypedPlace(place);
  }
}
