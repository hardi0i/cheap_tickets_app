import 'dart:developer';
import 'dart:io';

import 'package:cheap_tickets_app/features/all_available_tickets/data/data_source/local/available_tickets_loca_data_source.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:cheap_tickets_app/core/error/exceptions.dart';
import 'package:cheap_tickets_app/core/remapper/remapper.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/data/data_source/remote/available_tickets_remote_data_source.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/data/models/ticket_model.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/domain/entities/ticket_enity.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/domain/repository/tickets_repository.dart';

@LazySingleton(as: TicketsRepository)
class TicketsRepositoryImpl implements TicketsRepository {
  TicketsRepositoryImpl(
    @Named('TicketRemapper') this._remapper,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Remapper<TicketEntity, TicketModel> _remapper;
  final AvailableTicketsLocalDataSource _localDataSource;
  final AvailableTicketsRemoteDataSource _remoteDataSource;

  @override
  Future<List<TicketEntity>> getTicketsRemote() async {
    try {
      final httpResponse = await _remoteDataSource.getTickets();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        final ticketsModels = httpResponse.data.tickets;

        return ticketsModels
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

  Future<List<TicketEntity>> getTicketsLocal() async {
    try {
      final wrapper = await _localDataSource.getTickets();

      await Future.delayed(Duration(milliseconds: 700));

      final tickets = wrapper.tickets;

      return tickets
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
