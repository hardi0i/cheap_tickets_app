import 'package:cheap_tickets_app/core/unions/base_status.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/domain/entities/ticket_enity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_cubit_state.freezed.dart';

@freezed
class TicketsCubitState with _$TicketsCubitState {
  const factory TicketsCubitState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<TicketEntity> tickets,
  }) = _TicketsCubitState;
}
