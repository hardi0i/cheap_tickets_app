import 'package:cheap_tickets_app/core/unions/base_status.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/domain/entities/brief_ticket_info_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partial_tickets_info_cubit_state.freezed.dart';

@freezed
class PartialTicketsInfoCubitState with _$PartialTicketsInfoCubitState {
  const factory PartialTicketsInfoCubitState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<BriefTicketInfoEntity> partialTicketsInfo,
  }) = _PartialTicketsInfoCubitState;
}
