import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'package:cheap_tickets_app/core/constants/url_paths.dart';
import 'package:cheap_tickets_app/features/offers/data/models/offers_wrapper_model.dart';

part 'offers_remote_data_source.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class OffersRemoteDataSource {
  factory OffersRemoteDataSource(Dio dio) = _OffersRemoteDataSource;

  @GET('/00727197-24ae-48a0-bcb3-63eb35d7a9de')
  Future<HttpResponse<OffersWrapperModel>> getOffers();
}

@module
abstract class ORDSInjectableModule {
  OffersRemoteDataSource getService(Dio client) =>
      OffersRemoteDataSource(client);
}
