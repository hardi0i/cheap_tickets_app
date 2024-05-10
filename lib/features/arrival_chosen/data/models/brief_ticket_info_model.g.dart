// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brief_ticket_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BriefTicketInfoModelImpl _$$BriefTicketInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BriefTicketInfoModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      time: (json['time_range'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: json['price'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$BriefTicketInfoModelImplToJson(
        _$BriefTicketInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'time_range': instance.time,
      'price': instance.price,
    };
