import 'package:freezed_annotation/freezed_annotation.dart';

part 'brief_ticket_info_entity.freezed.dart';

@freezed
class BriefTicketInfoEntity with _$BriefTicketInfoEntity {
  const factory BriefTicketInfoEntity({
    required int id,
    required String title,
    required String price,
    required String timeRange,
  }) = _BriefTicketInfoEntity;
}
