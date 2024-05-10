import 'package:cheap_tickets_app/core/use_cases/use_case.dart';
import 'package:cheap_tickets_app/features/search/domain/repository/search_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UpdateLastTypedPlaceUseCase extends UseCase<void, String> {
  UpdateLastTypedPlaceUseCase(this._searchRepository);

  final SearchRepository _searchRepository;

  @override
  Future<void> call({required String? params}) async {
    await _searchRepository.updateSavedPlace(params!);
  }
}
