import 'dart:developer';

import 'package:cheap_tickets_app/features/arrival_chosen/domain/use_cases/convert_date_time_use_case.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/travel_dates/travel_dates_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TravelDatesCubit extends Cubit<TravelDatesCubitState> {
  TravelDatesCubit(this._convertDateTimeUseCase)
      : super(const TravelDatesCubitState());

  final ConvertDateTimeUseCase _convertDateTimeUseCase;

  Future<void> changeDepartureDate(DateTime? dateTime) async {
    if (dateTime == null) return;

    final convertedDate = await _convertDateTimeUseCase(params: dateTime);

    emit(
      state.copyWith(
        departureDateTime: dateTime,
        departureDate: convertedDate,
      ),
    );
  }

  Future<void> changeRetunDate(DateTime? dateTime) async {
    log('dateTime $dateTime');
    if (dateTime == null) return;

    final convertedDate = await _convertDateTimeUseCase(params: dateTime);

    log('convertedDate $convertedDate');

    emit(
      state.copyWith(
        returnDate: convertedDate,
      ),
    );
  }
}
