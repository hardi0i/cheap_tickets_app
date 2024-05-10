import 'package:auto_route/auto_route.dart';
import 'package:cheap_tickets_app/config/routes/cheap_tickets_router.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cheap_tickets_app/config/theme/cheap_tickets_colors.dart';
import 'package:cheap_tickets_app/core/constants/assets_path.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapTicketsTupography = context.typography;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () async {
            await context.router.maybePop().then(
              (value) {
                context.read<SearchCardCubit>().cardStateToTickets();

                context.router.push(
                  DummyRoute2(
                    title: 'Сложный маршрут',
                  ),
                );
              },
            );
          },
          child: Column(
            children: [
              Container(
                height: 48,
                width: 48,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                  color: CheapTicketsColors.darkGreen1,
                ),
                child: SvgPicture.asset(
                  complexRouteIconAsset,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Сложный\nмаршрут',
                textAlign: TextAlign.center,
                style: cheapTicketsTupography.text2,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () async {
            context
                .read<SearchCardCubit>()
                .updatePlaces(arrival: 'Куда угодно');
          },
          child: Column(
            children: [
              Container(
                height: 48,
                width: 48,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                  color: CheapTicketsColors.blue1,
                ),
                child: SvgPicture.asset(
                  earthIconAsset,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Куда угодно',
                style: cheapTicketsTupography.text2,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () async {
            await context.router.maybePop().then(
              (value) {
                context.read<SearchCardCubit>().cardStateToTickets();

                context.router.push(
                  DummyRoute2(
                    title: 'Выходные',
                  ),
                );
              },
            );
          },
          child: Column(
            children: [
              Container(
                height: 48,
                width: 48,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                  color: CheapTicketsColors.darkBlue1,
                ),
                child: SvgPicture.asset(
                  calendarIconAsset,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Выходные',
                style: cheapTicketsTupography.text2,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () async {
            await context.router.maybePop().then(
              (value) {
                context.read<SearchCardCubit>().cardStateToTickets();

                context.router.push(
                  DummyRoute2(
                    title: 'Горячие билеты',
                  ),
                );
              },
            );
          },
          child: Column(
            children: [
              Container(
                height: 48,
                width: 48,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                  color: CheapTicketsColors.red1,
                ),
                child: SvgPicture.asset(
                  fireIconAsset,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Горячие\nбилеты',
                textAlign: TextAlign.center,
                style: cheapTicketsTupography.text2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
