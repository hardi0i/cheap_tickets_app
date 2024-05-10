import 'dart:developer';
import 'dart:io';

import 'package:cheap_tickets_app/core/error/exceptions.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/data/data_source/local/partial_ticket_local_data_source.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:cheap_tickets_app/core/remapper/remapper.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/data/models/brief_ticket_info_model.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/data/data_source/remote/partial_ticket_remote_data_source.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/domain/entities/brief_ticket_info_entity.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/domain/repository/partial_ticket_offer_repository.dart';

@LazySingleton(as: PartialTicketOfferRepository)
class PartialTicketOfferRepositoryImpl implements PartialTicketOfferRepository {
  PartialTicketOfferRepositoryImpl(
    @Named('BriefTicketInfoRemapper') this._remapper,
    this._remoteDataSource,
    this._localDataSource,
  );

  final Remapper<BriefTicketInfoEntity, BriefTicketInfoModel> _remapper;
  final PartialTicketRemoteDataSource _remoteDataSource;
  final PartialTickerLocalDataSource _localDataSource;

  @override
  Future<List<BriefTicketInfoEntity>> remoteGetPartialTicketOffer() async {
    try {
      final httpResponse = await _remoteDataSource.getTicketsList();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        final partialTicketsOffers = httpResponse.data.ticketsOffers;

        return partialTicketsOffers
            .map(
              (offer) => _remapper.fromModel(offer),
            )
            .toList();
      } else {
        throw ServerException();
      }
    } on DioException catch (e, st) {
      log(st.toString());
      throw ServerException(
        message: e.message,
      );
    } catch (e, st) {
      log(st.toString());
      throw GenericException(
        message: e.toString(),
      );
    }
  }

  @override
  Future<List<BriefTicketInfoEntity>> localGetPartialTicketOffer() async {
    try {
      final wrapper = await _localDataSource.partialTicketsOffer();

      await Future.delayed(const Duration(milliseconds: 700));

      final partialTicketsOffers = wrapper.ticketsOffers;

      return partialTicketsOffers
          .map(
            (offer) => _remapper.fromModel(offer),
          )
          .toList();
    } catch (e, st) {
      log(e.toString());
      log(st.toString());
      throw GenericException(message: e.toString());
    }
  }
}
