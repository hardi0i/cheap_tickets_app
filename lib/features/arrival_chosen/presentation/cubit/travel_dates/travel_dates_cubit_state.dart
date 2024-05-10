import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_dates_cubit_state.freezed.dart';

@freezed
class TravelDatesCubitState with _$TravelDatesCubitState {
  const factory TravelDatesCubitState({
    DateTime? departureDateTime,
    @Default('') String departureDate,
    @Default('') String returnDate,
  }) = _TravelDatesCubitState;
}
