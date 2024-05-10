// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../config/theme/theme_cubit/theme_cubit.dart' as _i4;
import '../../features/all_available_tickets/data/data_source/local/available_tickets_loca_data_source.dart'
    as _i10;
import '../../features/all_available_tickets/data/data_source/remote/available_tickets_remote_data_source.dart'
    as _i31;
import '../../features/all_available_tickets/data/models/ticket_model.dart'
    as _i20;
import '../../features/all_available_tickets/data/remapper/ticket_remapper.dart'
    as _i21;
import '../../features/all_available_tickets/data/repository/tickets_repository_impl.dart'
    as _i38;
import '../../features/all_available_tickets/domain/entities/ticket_enity.dart'
    as _i19;
import '../../features/all_available_tickets/domain/repository/tickets_repository.dart'
    as _i37;
import '../../features/all_available_tickets/domain/use_cases/get_available_tickets_use_case.dart'
    as _i43;
import '../../features/all_available_tickets/presentation/cubit/tickets_cubit.dart'
    as _i46;
import '../../features/arrival_chosen/data/data_source/local/partial_ticket_local_data_source.dart'
    as _i9;
import '../../features/arrival_chosen/data/data_source/remote/partial_ticket_remote_data_source.dart'
    as _i30;
import '../../features/arrival_chosen/data/models/brief_ticket_info_model.dart'
    as _i17;
import '../../features/arrival_chosen/data/remapper/brief_ticket_info_remapper.dart'
    as _i18;
import '../../features/arrival_chosen/data/repository/partial_ticket_offer_repository_impl.dart'
    as _i33;
import '../../features/arrival_chosen/domain/entities/brief_ticket_info_entity.dart'
    as _i16;
import '../../features/arrival_chosen/domain/repository/partial_ticket_offer_repository.dart'
    as _i32;
import '../../features/arrival_chosen/domain/use_cases/convert_date_time_use_case.dart'
    as _i7;
import '../../features/arrival_chosen/domain/use_cases/get_partial_tickets_info_use_case.dart'
    as _i39;
import '../../features/arrival_chosen/presentation/cubit/partial_tickets_info/partial_tickets_info_cubit.dart'
    as _i42;
import '../../features/arrival_chosen/presentation/cubit/travel_dates/travel_dates_cubit.dart'
    as _i15;
import '../../features/offers/data/data_source/local/offers_local_data_source.dart'
    as _i8;
import '../../features/offers/data/data_source/remote/offers_remote_data_source.dart'
    as _i29;
import '../../features/offers/data/models/offer_model.dart' as _i13;
import '../../features/offers/data/remapper/offer_remapper.dart' as _i14;
import '../../features/offers/data/repository/offers_repository_impl.dart'
    as _i41;
import '../../features/offers/domain/entities/offer_entity.dart' as _i12;
import '../../features/offers/domain/repository/offers_repository.dart' as _i40;
import '../../features/offers/domain/use_cases/get_offers_use_case.dart'
    as _i44;
import '../../features/offers/presentation/cubit/offers_cubit.dart' as _i47;
import '../../features/recomeded_places/data/data_sources/recomended_places_remote_data_source.dart'
    as _i5;
import '../../features/recomeded_places/data/remapper/recomended_places_remapper.dart'
    as _i6;
import '../../features/recomeded_places/data/repository/recomended_places_repository_impl.dart'
    as _i24;
import '../../features/recomeded_places/domain/repository/recomended_places_repository.dart'
    as _i23;
import '../../features/recomeded_places/domain/use_case/get_recomended_places_use_case.dart'
    as _i28;
import '../../features/recomeded_places/presentation/cubit/recomended_places_cubit.dart'
    as _i36;
import '../../features/search/data/data_sources/search_local_data_source.dart'
    as _i22;
import '../../features/search/data/repository/search_repository_impl.dart'
    as _i26;
import '../../features/search/domain/repository/search_repository.dart' as _i25;
import '../../features/search/domain/use_case/get_last_typed_place_use_case.dart'
    as _i35;
import '../../features/search/domain/use_case/update_last_typed_place_use_case.dart'
    as _i34;
import '../../features/search/presentation/cubit/search_card_cubit.dart'
    as _i45;
import '../modules/dio_module.dart' as _i49;
import '../modules/sp_module.dart' as _i48;
import '../remapper/remapper.dart' as _i11;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $$$init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final sPModule = _$SPModule();
  final dioModule = _$DioModule();
  final oRDSInjectableModule = _$ORDSInjectableModule();
  final pTRDSInjectableModule = _$PTRDSInjectableModule();
  final aTRDSInjectableModule = _$ATRDSInjectableModule();
  await gh.factoryAsync<_i3.SharedPreferences>(
    () => sPModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i4.ThemeCubit>(() => _i4.ThemeCubit());
  gh.lazySingleton<_i5.RecomendedPlacesRemoteDataSource>(
      () => _i5.RecomendedPlacesRemoteDataSource());
  gh.lazySingleton<_i6.RecomendedPlacesRemapper>(
      () => _i6.RecomendedPlacesRemapper());
  gh.lazySingleton<_i7.ConvertDateTimeUseCase>(
      () => _i7.ConvertDateTimeUseCase());
  gh.lazySingleton<_i8.OfferLocalDataSource>(() => _i8.OfferLocalDataSource());
  gh.lazySingleton<_i9.PartialTickerLocalDataSource>(
      () => _i9.PartialTickerLocalDataSource());
  gh.lazySingleton<_i10.AvailableTicketsLocalDataSource>(
      () => _i10.AvailableTicketsLocalDataSource());
  gh.factory<String>(
    () => dioModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.singleton<_i11.Remapper<_i12.OfferEntity, _i13.OfferModel>>(
    () => _i14.OfferRemapper(),
    instanceName: 'OfferRemapper',
  );
  gh.factory<_i15.TravelDatesCubit>(
      () => _i15.TravelDatesCubit(gh<_i7.ConvertDateTimeUseCase>()));
  gh.singleton<
      _i11.Remapper<_i16.BriefTicketInfoEntity, _i17.BriefTicketInfoModel>>(
    () => _i18.BriefTicketInfoRemapper(),
    instanceName: 'BriefTicketInfoRemapper',
  );
  gh.singleton<_i11.Remapper<_i19.TicketEntity, _i20.TicketModel>>(
    () => _i21.TicketRemapper(),
    instanceName: 'TicketRemapper',
  );
  gh.lazySingleton<_i22.SearchLocalDataSource>(
      () => _i22.SharedPrefSearchLocalDataSource(gh<_i3.SharedPreferences>()));
  gh.lazySingleton<_i23.RecomendedPlacesRepository>(
      () => _i24.RecomendedPlacesrRepositoryImpl(
            gh<_i5.RecomendedPlacesRemoteDataSource>(),
            gh<_i6.RecomendedPlacesRemapper>(),
          ));
  gh.lazySingleton<_i25.SearchRepository>(
      () => _i26.SearchRepositoryImpl(gh<_i22.SearchLocalDataSource>()));
  gh.lazySingleton<_i27.Dio>(
      () => dioModule.dio(gh<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i28.GetRecomendedPlacesUseCase>(() =>
      _i28.GetRecomendedPlacesUseCase(gh<_i23.RecomendedPlacesRepository>()));
  gh.factory<_i29.OffersRemoteDataSource>(
      () => oRDSInjectableModule.getService(gh<_i27.Dio>()));
  gh.factory<_i30.PartialTicketRemoteDataSource>(
      () => pTRDSInjectableModule.getService(gh<_i27.Dio>()));
  gh.factory<_i31.AvailableTicketsRemoteDataSource>(
      () => aTRDSInjectableModule.getService(gh<_i27.Dio>()));
  gh.lazySingleton<_i32.PartialTicketOfferRepository>(
      () => _i33.PartialTicketOfferRepositoryImpl(
            gh<
                    _i11.Remapper<_i16.BriefTicketInfoEntity,
                        _i17.BriefTicketInfoModel>>(
                instanceName: 'BriefTicketInfoRemapper'),
            gh<_i30.PartialTicketRemoteDataSource>(),
            gh<_i9.PartialTickerLocalDataSource>(),
          ));
  gh.lazySingleton<_i34.UpdateLastTypedPlaceUseCase>(
      () => _i34.UpdateLastTypedPlaceUseCase(gh<_i25.SearchRepository>()));
  gh.lazySingleton<_i35.GetLastTypedPlaceUseCase>(
      () => _i35.GetLastTypedPlaceUseCase(gh<_i25.SearchRepository>()));
  gh.factory<_i36.RecomendedPlacesCubit>(
      () => _i36.RecomendedPlacesCubit(gh<_i28.GetRecomendedPlacesUseCase>()));
  gh.lazySingleton<_i37.TicketsRepository>(() => _i38.TicketsRepositoryImpl(
        gh<_i11.Remapper<_i19.TicketEntity, _i20.TicketModel>>(
            instanceName: 'TicketRemapper'),
        gh<_i10.AvailableTicketsLocalDataSource>(),
        gh<_i31.AvailableTicketsRemoteDataSource>(),
      ));
  gh.lazySingleton<_i39.GetPartialTicketsInfoUseCase>(() =>
      _i39.GetPartialTicketsInfoUseCase(
          gh<_i32.PartialTicketOfferRepository>()));
  gh.lazySingleton<_i40.OffersRepository>(() => _i41.OffersRepositoryImpl(
        gh<_i29.OffersRemoteDataSource>(),
        gh<_i8.OfferLocalDataSource>(),
        gh<_i11.Remapper<_i12.OfferEntity, _i13.OfferModel>>(
            instanceName: 'OfferRemapper'),
      ));
  gh.factory<_i42.PartialTicketsInfoCubit>(() =>
      _i42.PartialTicketsInfoCubit(gh<_i39.GetPartialTicketsInfoUseCase>()));
  gh.lazySingleton<_i43.GetAvailavleTicketsUseCase>(
      () => _i43.GetAvailavleTicketsUseCase(gh<_i37.TicketsRepository>()));
  gh.lazySingleton<_i44.GetOffersUseCase>(
      () => _i44.GetOffersUseCase(gh<_i40.OffersRepository>()));
  gh.singleton<_i45.SearchCardCubit>(() => _i45.SearchCardCubit(
        gh<_i35.GetLastTypedPlaceUseCase>(),
        gh<_i34.UpdateLastTypedPlaceUseCase>(),
      ));
  gh.factory<_i46.TicketsCubit>(
      () => _i46.TicketsCubit(gh<_i43.GetAvailavleTicketsUseCase>()));
  gh.factory<_i47.OffersCubit>(
      () => _i47.OffersCubit(gh<_i44.GetOffersUseCase>()));
  return getIt;
}

class _$SPModule extends _i48.SPModule {}

class _$DioModule extends _i49.DioModule {}

class _$ORDSInjectableModule extends _i29.ORDSInjectableModule {}

class _$PTRDSInjectableModule extends _i30.PTRDSInjectableModule {}

class _$ATRDSInjectableModule extends _i31.ATRDSInjectableModule {}
