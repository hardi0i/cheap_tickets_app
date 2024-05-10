// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_wrapper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketsWrapperModelImpl _$$TicketsWrapperModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TicketsWrapperModelImpl(
      tickets: (json['tickets'] as List<dynamic>)
          .map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TicketsWrapperModelImplToJson(
        _$TicketsWrapperModelImpl instance) =>
    <String, dynamic>{
      'tickets': instance.tickets,
    };
