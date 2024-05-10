import 'package:cheap_tickets_app/features/all_available_tickets/data/models/ticket_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_wrapper_model.freezed.dart';
part 'tickets_wrapper_model.g.dart';

@freezed
class TicketsWrapperModel with _$TicketsWrapperModel {
  const factory TicketsWrapperModel({
    required List<TicketModel> tickets,
  }) = _TicketsWrapperModel;

  factory TicketsWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$TicketsWrapperModelFromJson(json);
}
