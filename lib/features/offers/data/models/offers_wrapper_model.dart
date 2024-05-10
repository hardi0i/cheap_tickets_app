import 'package:cheap_tickets_app/features/offers/data/models/offer_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_wrapper_model.freezed.dart';
part 'offers_wrapper_model.g.dart';

@freezed
class OffersWrapperModel with _$OffersWrapperModel {
  const factory OffersWrapperModel({
    required List<OfferModel> offers,
  }) = _OffersWrapperModel;

  factory OffersWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$OffersWrapperModelFromJson(json);
}
