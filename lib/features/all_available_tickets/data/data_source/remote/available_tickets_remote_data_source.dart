import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'package:cheap_tickets_app/core/constants/url_paths.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/data/models/tickets_wrapper_model.dart';

part 'available_tickets_remote_data_source.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class AvailableTicketsRemoteDataSource {
  factory AvailableTicketsRemoteDataSource(Dio dio) =
      _AvailableTicketsRemoteDataSource;

  @GET('/d144777c-a67f-4e35-867a-cacc3b827473')
  Future<HttpResponse<TicketsWrapperModel>> getTickets();
}

@module
abstract class ATRDSInjectableModule {
  AvailableTicketsRemoteDataSource getService(Dio client) =>
      AvailableTicketsRemoteDataSource(client);
}
