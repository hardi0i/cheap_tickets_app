import 'package:cheap_tickets_app/features/all_available_tickets/presentation/cubit/tickets_cubit.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/presentation/widgets/ticket_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadedTickets extends StatelessWidget {
  const LoadedTickets({super.key});

  @override
  Widget build(BuildContext context) {
    final tickets = context.select(
      (TicketsCubit cubit) => cubit.state.tickets,
    );

    final deviceHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: deviceHeight * 0.72,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 28,
        ),
        itemCount: tickets.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemBuilder: (context, index) {
          final ticket = tickets[index];

          return TicketTile(ticket: ticket);
        },
      ),
    );
  }
}
