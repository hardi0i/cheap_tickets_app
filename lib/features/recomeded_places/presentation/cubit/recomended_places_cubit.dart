import 'dart:developer';

import 'package:cheap_tickets_app/core/error/exceptions.dart';
import 'package:cheap_tickets_app/core/unions/base_status.dart';
import 'package:cheap_tickets_app/features/recomeded_places/domain/use_case/get_recomended_places_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cheap_tickets_app/features/recomeded_places/presentation/cubit/recomended_places_cubit_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class RecomendedPlacesCubit extends Cubit<RecomendedPlacesCubitState> {
  RecomendedPlacesCubit(
    this._placesUseCase,
  ) : super(const RecomendedPlacesCubitState());

  final GetRecomendedPlacesUseCase _placesUseCase;

  Future<void> getRecomendedPlaces() async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    try {
      final recomendedPlaces = await _placesUseCase();

      if (isClosed) return;

      emit(
        state.copyWith(
          recomendedPlaces: recomendedPlaces,
          status: const BaseStatus.success(),
        ),
      );
    } on GenericException catch (e, st) {
      log(e.toString());
      log(st.toString());
      emit(
        state.copyWith(
          status: BaseStatus.failure(
            GenericException(
              message: e.toString(),
            ),
          ),
        ),
      );
    }
  }
}
