import 'package:cheap_tickets_app/features/arrival_chosen/data/models/brief_ticket_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brief_tickets_wrapper_model.freezed.dart';
part 'brief_tickets_wrapper_model.g.dart';

@freezed
class BriefTicketsWrapperModel with _$BriefTicketsWrapperModel {
  const factory BriefTicketsWrapperModel({
    @JsonKey(name: 'tickets_offers')
    required List<BriefTicketInfoModel> ticketsOffers,
  }) = _BriefTicketsWrapperModel;

  factory BriefTicketsWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$BriefTicketsWrapperModelFromJson(json);
}
