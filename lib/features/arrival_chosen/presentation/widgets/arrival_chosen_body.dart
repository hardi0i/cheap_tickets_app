import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import 'package:cheap_tickets_app/config/routes/cheap_tickets_router.dart';
import 'package:cheap_tickets_app/config/theme/cheap_tickets_colors.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/travel_dates/travel_dates_cubit.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/widgets/buttons_row.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/widgets/direct_flights.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/widgets/subscription_button.dart';
import 'package:cheap_tickets_app/features/search/presentation/widgets/search_card.dart';

class ArrivalChosenBody extends StatelessWidget {
  const ArrivalChosenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapTicketsTypography = context.typography;

    final travelDatesCubit = context.read<TravelDatesCubit>();

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          const SearchCard(),
          const ButtonsRow(),
          const DirectFlights(),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: double.infinity,
            height: 42,
            margin: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: ElevatedButton(
              onPressed: () => context.router.push(
                TicketsRoute(
                  travelDatesCubit: travelDatesCubit,
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.resolveWith(
                  (states) => RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                ),
                overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.transparent,
                ),
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => CheapTicketsColors.blue1,
                ),
              ),
              child: Text(
                'Посмотреть все билеты',
                style: cheapTicketsTypography.title3,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SubscriptionButton()
        ],
      ),
    );
  }
}
