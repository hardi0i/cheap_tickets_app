// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brief_tickets_wrapper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BriefTicketsWrapperModelImpl _$$BriefTicketsWrapperModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BriefTicketsWrapperModelImpl(
      ticketsOffers: (json['tickets_offers'] as List<dynamic>)
          .map((e) => BriefTicketInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BriefTicketsWrapperModelImplToJson(
        _$BriefTicketsWrapperModelImpl instance) =>
    <String, dynamic>{
      'tickets_offers': instance.ticketsOffers,
    };
