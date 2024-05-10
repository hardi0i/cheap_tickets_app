import 'package:auto_route/auto_route.dart';
import 'package:cheap_tickets_app/config/theme/cheap_tickets_colors.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/travel_dates/travel_dates_cubit.dart';
import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapTicketsPalette = context.palette;
    final cheapTicketsTypography = context.typography;

    final travelDates = context.read<TravelDatesCubit>().state;
    final travelCities = context.read<SearchCardCubit>().state;

    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      height: 56,
      color: cheapTicketsPalette.modalBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => context.router.maybePop(),
            child: const Icon(
              Icons.arrow_back,
              color: CheapTicketsColors.blue1,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${travelCities.departure}-${travelCities.arrival}',
                style: cheapTicketsTypography.title3,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                '${travelDates.departureDate} ${travelDates.returnDate.isNotEmpty ? '- ${travelDates.returnDate}' : ''}',
                style: cheapTicketsTypography.title4?.copyWith(
                  color: cheapTicketsPalette.unselectedColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
