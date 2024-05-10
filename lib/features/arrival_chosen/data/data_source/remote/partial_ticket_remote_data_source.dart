import 'package:cheap_tickets_app/core/constants/url_paths.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/data/models/brief_tickets_wrapper_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'partial_ticket_remote_data_source.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class PartialTicketRemoteDataSource {
  factory PartialTicketRemoteDataSource(Dio dio) =
      _PartialTicketRemoteDataSource;

  @GET('/3424132d-a51a-4613-b6c9-42b2d214f35f')
  Future<HttpResponse<BriefTicketsWrapperModel>> getTicketsList();
}

@module
abstract class PTRDSInjectableModule {
  PartialTicketRemoteDataSource getService(Dio client) =>
      PartialTicketRemoteDataSource(client);
}
