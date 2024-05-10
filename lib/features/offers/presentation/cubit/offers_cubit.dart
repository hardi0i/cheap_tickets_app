import 'package:cheap_tickets_app/core/error/exceptions.dart';
import 'package:cheap_tickets_app/core/unions/base_status.dart';
import 'package:cheap_tickets_app/features/offers/domain/use_cases/get_offers_use_case.dart';
import 'package:cheap_tickets_app/features/offers/presentation/cubit/offers_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class OffersCubit extends Cubit<OffersCubitState> {
  OffersCubit(this._useCase)
      : super(
          const OffersCubitState(),
        );

  final GetOffersUseCase _useCase;

  Future<void> getOffers() async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    try {
      final offersList = await _useCase();

      if (isClosed) return;

      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          offers: offersList,
        ),
      );
    } on ServerException catch (e) {
      emit(
        state.copyWith(
          status: BaseStatus.failure(e),
        ),
      );
    } on GenericException catch (e) {
      emit(
        state.copyWith(
          status: BaseStatus.failure(e),
        ),
      );
    }
  }
}
