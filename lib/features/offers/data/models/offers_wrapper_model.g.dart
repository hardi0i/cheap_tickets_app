// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_wrapper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffersWrapperModelImpl _$$OffersWrapperModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OffersWrapperModelImpl(
      offers: (json['offers'] as List<dynamic>)
          .map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OffersWrapperModelImplToJson(
        _$OffersWrapperModelImpl instance) =>
    <String, dynamic>{
      'offers': instance.offers,
    };
