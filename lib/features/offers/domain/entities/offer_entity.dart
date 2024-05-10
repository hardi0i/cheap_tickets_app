import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_entity.freezed.dart';

@freezed
class OfferEntity with _$OfferEntity {
  const factory OfferEntity({
    required int id,
    required String title,
    required String town,
    required String price,
  }) = _OfferEntity;
}
