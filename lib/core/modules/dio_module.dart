import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:cheap_tickets_app/core/constants/url_paths.dart' as url;

@module
abstract class DioModule {
  @Named("BaseUrl")
  String get baseUrl => url.baseUrl;

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));
}
