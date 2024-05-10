import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:cheap_tickets_app/core/error/exceptions.dart';
import 'package:cheap_tickets_app/core/unions/base_status.dart';
import 'package:cheap_tickets_app/core/unions/search_card_state.dart';
import 'package:cheap_tickets_app/features/search/domain/use_case/get_last_typed_place_use_case.dart';
import 'package:cheap_tickets_app/features/search/domain/use_case/update_last_typed_place_use_case.dart';
import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit_state.dart';

@singleton
class SearchCardCubit extends Cubit<SearchCardCubitState> {
  SearchCardCubit(
    this._lastTypedPlaceUseCase,
    this._updateLastTypedPlaceUseCase,
  ) : super(const SearchCardCubitState());

  final GetLastTypedPlaceUseCase _lastTypedPlaceUseCase;
  final UpdateLastTypedPlaceUseCase _updateLastTypedPlaceUseCase;

  Future<void> swapPlaces() async {
    emit(
      state.copyWith(
        departure: state.arrival,
        arrival: state.departure,
      ),
    );
  }

  Future<void> getLastTypedPlace() async {
    final departure = await _lastTypedPlaceUseCase();

    if (isClosed) return;

    if (departure.isEmpty) return;

    emit(
      state.copyWith(
        departure: departure,
      ),
    );
  }

  Future<void> cardStateToModalSheet(String departure) async {
    try {
      if (departure.isNotEmpty) {
        await _updateLastTypedPlaceUseCase(params: departure);

        if (isClosed) return;

        emit(
          state.copyWith(
            departure: departure,
            state: const SearchCardState.modal(),
          ),
        );
      } else {
        emit(
          state.copyWith(
            state: const SearchCardState.modal(),
          ),
        );
      }
    } on CacheException catch (e) {
      emit(
        state.copyWith(
          status: BaseStatus.failure(e),
        ),
      );
    }
  }

  Future<void> cardStateToChosenCountry() async {
    emit(
      state.copyWith(
        state: const SearchCardState.contryChosen(),
      ),
    );
  }

  Future<void> cardStateToTickets() async {
    emit(
      state.copyWith(
        arrival: '',
        state: const SearchCardState.initial(),
      ),
    );
  }

  Future<void> updatePlaces({
    String? departure,
    String? arrival,
  }) async {
    emit(
      state.copyWith(
        departure: departure ?? state.departure,
        arrival: arrival ?? state.arrival,
      ),
    );

    if (state.arrival.isNotEmpty && state.departure.isNotEmpty) {
      cardStateToChosenCountry();
    }
  }

  Future<void> clearArrival() async {
    emit(
      state.copyWith(
        arrival: '',
      ),
    );
  }
}
