import 'package:cheap_tickets_app/core/use_cases/use_case.dart';
import 'package:cheap_tickets_app/features/offers/domain/entities/offer_entity.dart';
import 'package:cheap_tickets_app/features/offers/domain/repository/offers_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetOffersUseCase extends UseCase<List<OfferEntity>, void> {
  GetOffersUseCase(this._offerRepository);

  final OffersRepository _offerRepository;

  @override
  Future<List<OfferEntity>> call({void params}) async {
    final offers = await _offerRepository.getOffersLocal();

    return offers;
  }
}
