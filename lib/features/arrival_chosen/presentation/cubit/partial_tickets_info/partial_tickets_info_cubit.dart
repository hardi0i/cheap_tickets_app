import 'package:cheap_tickets_app/core/error/exceptions.dart';
import 'package:cheap_tickets_app/core/unions/base_status.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/domain/use_cases/get_partial_tickets_info_use_case.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/partial_tickets_info/partial_tickets_info_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PartialTicketsInfoCubit extends Cubit<PartialTicketsInfoCubitState> {
  PartialTicketsInfoCubit(
    this._partialTicketsInfoUseCase,
  ) : super(const PartialTicketsInfoCubitState());

  final GetPartialTicketsInfoUseCase _partialTicketsInfoUseCase;

  Future<void> init() async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    try {
      final partialTicketsList = await _partialTicketsInfoUseCase();

      if (isClosed) return;

      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          partialTicketsInfo: partialTicketsList,
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
