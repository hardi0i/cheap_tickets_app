import 'package:cheap_tickets_app/features/offers/data/models/price_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_model.freezed.dart';
part 'offer_model.g.dart';

@freezed
class OfferModel with _$OfferModel {
  const factory OfferModel({
    required int id,
    required String title,
    required String town,
    required PriceModel price,
  }) = _OfferModel;

  factory OfferModel.fromJson(Map<String, dynamic> json) =>
      _$OfferModelFromJson(json);
}
