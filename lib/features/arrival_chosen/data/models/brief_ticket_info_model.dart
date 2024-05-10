import 'package:freezed_annotation/freezed_annotation.dart';

part 'brief_ticket_info_model.freezed.dart';
part 'brief_ticket_info_model.g.dart';

@freezed
class BriefTicketInfoModel with _$BriefTicketInfoModel {
  const factory BriefTicketInfoModel({
    required int id,
    required String title,
    @JsonKey(name: 'time_range') required List<String> time,
    required Map<String, dynamic> price,
  }) = _BriefTicketInfoModel;

  factory BriefTicketInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BriefTicketInfoModelFromJson(json);
}
