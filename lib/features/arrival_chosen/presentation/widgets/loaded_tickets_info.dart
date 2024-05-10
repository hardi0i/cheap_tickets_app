import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/partial_tickets_info/partial_tickets_info_cubit.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/widgets/custom_ticket_tile.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';

class LoadedTicketsInfo extends StatelessWidget {
  const LoadedTicketsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapTicketsPalette = context.palette;
    final cheapTicketsTypography = context.typography;

    final partialTickets = context.select(
      (PartialTicketsInfoCubit cubit) => cubit.state.partialTicketsInfo,
    );

    return Container(
      height: 288,
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cheapTicketsPalette.thirdCardBackColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Прямые рельсы',
            style: cheapTicketsTypography.title2,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: partialTickets.length + 1,
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Divider(
                    height: 16,
                    color: cheapTicketsPalette.secondaryCardBackColor,
                    thickness: 1,
                  ),
                );
              },
              itemBuilder: (context, index) {
                if (index == partialTickets.length) {
                  return const SizedBox();
                } else {
                  final ticket = partialTickets[index];
                  return CustomTicketTile(ticket: ticket);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
