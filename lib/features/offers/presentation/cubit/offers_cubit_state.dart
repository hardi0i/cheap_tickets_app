import 'package:cheap_tickets_app/core/unions/base_status.dart';
import 'package:cheap_tickets_app/features/offers/domain/entities/offer_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_cubit_state.freezed.dart';

@freezed
class OffersCubitState with _$OffersCubitState {
  const factory OffersCubitState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<OfferEntity> offers,
  }) = _OffersCubitState;
}
