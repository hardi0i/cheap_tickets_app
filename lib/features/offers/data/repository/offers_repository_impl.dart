import 'dart:developer';
import 'dart:io';

import 'package:cheap_tickets_app/core/error/exceptions.dart';
import 'package:cheap_tickets_app/core/remapper/remapper.dart';
import 'package:cheap_tickets_app/features/offers/data/data_source/local/offers_local_data_source.dart';
import 'package:cheap_tickets_app/features/offers/data/data_source/remote/offers_remote_data_source.dart';
import 'package:cheap_tickets_app/features/offers/data/models/offer_model.dart';
import 'package:cheap_tickets_app/features/offers/domain/entities/offer_entity.dart';
import 'package:cheap_tickets_app/features/offers/domain/repository/offers_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OffersRepository)
class OffersRepositoryImpl implements OffersRepository {
  OffersRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
    @Named('OfferRemapper') this._remapper,
  );

  final Remapper<OfferEntity, OfferModel> _remapper;
  final OffersRemoteDataSource _remoteDataSource;
  final OfferLocalDataSource _localDataSource;

  @override
  Future<List<OfferEntity>> getOffersRemote() async {
    try {
      final httpResponse = await _remoteDataSource.getOffers();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        final offersModels = httpResponse.data.offers;

        return offersModels
            .map(
              (offer) => _remapper.fromModel(offer),
            )
            .toList();
      } else {
        throw ServerException();
      }
    } on DioException catch (e, st) {
      log('$st');
      throw ServerException(
        message: e.message,
      );
    } catch (e, st) {
      log('$st');
      throw GenericException(
        message: e.toString(),
      );
    }
  }

  @override
  Future<List<OfferEntity>> getOffersLocal() async {
    try {
      final wrapper = await _localDataSource.getOffers();

      await Future.delayed(Duration(milliseconds: 700));

      final offers = wrapper.offers;

      return offers
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
