import 'dart:developer';

import 'package:cheap_tickets_app/core/unions/base_status.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/domain/use_cases/get_available_tickets_use_case.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/presentation/cubit/tickets_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TicketsCubit extends Cubit<TicketsCubitState> {
  TicketsCubit(
    this._getAvailavleTicketsUseCase,
  ) : super(const TicketsCubitState());

  final GetAvailavleTicketsUseCase _getAvailavleTicketsUseCase;

  Future<void> getTickets() async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    try {
      final tickets = await _getAvailavleTicketsUseCase();

      emit(
        state.copyWith(
          tickets: tickets,
          status: const BaseStatus.success(),
        ),
      );
    } catch (e, st) {
      log(e.toString());
      log(st.toString());
    }
  }
}
