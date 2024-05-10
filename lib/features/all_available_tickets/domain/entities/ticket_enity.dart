import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_enity.freezed.dart';

@freezed
class TicketEntity with _$TicketEntity {
  const factory TicketEntity({
    required int id,
    required String price,
    required String departureAiroport,
    required String arriavlAiroport,
    required String departureTime,
    required String arrivalTime,
    required String timeDifference,
    required String company,
    required bool hasTransfer,
    String? badge,
  }) = _TicketEntity;
}
