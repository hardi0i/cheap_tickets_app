import 'package:cheap_tickets_app/core/remapper/remapper.dart';
import 'package:cheap_tickets_app/features/offers/data/models/offer_model.dart';
import 'package:cheap_tickets_app/features/offers/domain/entities/offer_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@Named('OfferRemapper')
@Singleton(as: Remapper)
class OfferRemapper implements Remapper<OfferEntity, OfferModel> {
  @override
  OfferEntity fromModel(OfferModel model) {
    final price = NumberFormat("###,###,###")
        .format(model.price.value)
        .replaceAll(",", " ");

    return OfferEntity(
      id: model.id,
      title: model.title,
      town: model.town,
      price: price,
    );
  }
}
