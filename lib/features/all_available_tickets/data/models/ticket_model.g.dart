// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketModelImpl _$$TicketModelImplFromJson(Map<String, dynamic> json) =>
    _$TicketModelImpl(
      id: (json['id'] as num).toInt(),
      badge: json['badge'] as String?,
      price: json['price'] as Map<String, dynamic>,
      departure: DepartureAndArriavalModel.fromJson(
          json['departure'] as Map<String, dynamic>),
      arrival: DepartureAndArriavalModel.fromJson(
          json['arrival'] as Map<String, dynamic>),
      company: json['company'] as String,
      hasTransfer: json['has_transfer'] as bool,
    );

Map<String, dynamic> _$$TicketModelImplToJson(_$TicketModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'badge': instance.badge,
      'price': instance.price,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'company': instance.company,
      'has_transfer': instance.hasTransfer,
    };
