import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/core/constants/assets_path.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/travel_dates/travel_dates_cubit.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapTicketsTypography = context.typography;
    final cheapTicketsPalette = context.palette;

    final travelsDates = context.select(
      (TravelDatesCubit cubit) => cubit.state,
    );

    return SizedBox(
      height: 33,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: ElevatedButton.icon(
              onPressed: () {
                showDatePicker(
                  context: context,
                  firstDate: travelsDates.departureDateTime ?? DateTime.now(),
                  lastDate: DateTime(2100),
                ).then(
                  (dt) => context.read<TravelDatesCubit>().changeRetunDate(dt),
                );
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.transparent,
                ),
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => cheapTicketsPalette.cardBackgroundColor,
                ),
                padding: MaterialStateProperty.resolveWith(
                  (states) => const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 4.0,
                  ),
                ),
              ),
              label: Text(
                travelsDates.returnDate.isEmpty
                    ? 'обратно'
                    : travelsDates.returnDate,
                style: cheapTicketsTypography.title4,
              ),
              icon: SvgPicture.asset(
                plusIconAsset,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ElevatedButton.icon(
            onPressed: () {
              showDatePicker(
                context: context,
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
              ).then(
                (dt) =>
                    context.read<TravelDatesCubit>().changeDepartureDate(dt),
              );
            },
            style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith(
                (states) => Colors.transparent,
              ),
              backgroundColor: MaterialStateColor.resolveWith(
                (states) => cheapTicketsPalette.cardBackgroundColor,
              ),
              padding: MaterialStateProperty.resolveWith(
                (states) => const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 4.0,
                ),
              ),
            ),
            label: Text(
              travelsDates.departureDate,
              style: cheapTicketsTypography.title4,
            ),
            icon: SvgPicture.asset(
              plusIconAsset,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith(
                (states) => Colors.transparent,
              ),
              backgroundColor: MaterialStateColor.resolveWith(
                (states) => cheapTicketsPalette.cardBackgroundColor,
              ),
              padding: MaterialStateProperty.resolveWith(
                (states) => const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 4.0,
                ),
              ),
            ),
            label: Text(
              '1,эконом',
              style: cheapTicketsTypography.title4,
            ),
            icon: SvgPicture.asset(
              profileIconAsset,
              height: 12,
              colorFilter: ColorFilter.mode(
                cheapTicketsPalette.primaryLightColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.transparent,
                ),
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => cheapTicketsPalette.cardBackgroundColor,
                ),
                padding: MaterialStateProperty.resolveWith(
                  (states) => const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 4.0,
                  ),
                ),
              ),
              label: Text(
                'фильтры',
                style: cheapTicketsTypography.title4,
              ),
              icon: SvgPicture.asset(
                settingsIconAsset,
                height: 12,
                colorFilter: ColorFilter.mode(
                  cheapTicketsPalette.primaryLightColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
