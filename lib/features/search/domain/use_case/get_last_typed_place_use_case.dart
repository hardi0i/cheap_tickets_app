import 'package:cheap_tickets_app/core/use_cases/use_case.dart';
import 'package:cheap_tickets_app/features/search/domain/repository/search_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetLastTypedPlaceUseCase implements UseCase<String, void> {
  GetLastTypedPlaceUseCase(this._searchRepository);

  final SearchRepository _searchRepository;

  @override
  Future<String> call({void params}) async {
    final place = _searchRepository.getLastPlace();

    return place;
  }
}
