import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cheap_tickets_app/features/all_available_tickets/presentation/cubit/tickets_cubit.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/presentation/widgets/loaded_tickets.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/presentation/widgets/loading_tickets.dart';
import 'package:cheap_tickets_app/features/widgets/failure_widget.dart';

class TicketsList extends StatelessWidget {
  const TicketsList({super.key});

  @override
  Widget build(BuildContext context) {
    final ticketsState = context.select(
      (TicketsCubit cubit) => cubit.state.status,
    );

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: ticketsState.maybeWhen(
        loading: () => const LoadingTickets(
          key: Key('LoadingTickets'),
        ),
        success: () => const LoadedTickets(
          key: Key('LoadedTickets'),
        ),
        failure: (e) => const FailureWdiget(),
        orElse: () => const SizedBox(),
      ),
    );
  }
}
