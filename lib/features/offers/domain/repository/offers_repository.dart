import 'package:cheap_tickets_app/features/offers/domain/entities/offer_entity.dart';

abstract interface class OffersRepository {
  Future<List<OfferEntity>> getOffersRemote();

  Future<List<OfferEntity>> getOffersLocal();
}
