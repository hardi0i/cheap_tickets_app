import 'package:cheap_tickets_app/features/all_available_tickets/data/models/departure_and_arrival_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';

@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    required int id,
    required String? badge,
    required Map<String, dynamic> price,
    required DepartureAndArriavalModel departure,
    required DepartureAndArriavalModel arrival,
    required String company,
    @JsonKey(name: 'has_transfer') required bool hasTransfer,
  }) = _TicketModel;

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);
}
