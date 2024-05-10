import 'package:cheap_tickets_app/features/recomeded_places/presentation/cubit/recomended_places_cubit.dart';
import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit.dart';
import 'package:flutter/material.dart';

import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadedRecomendedPlacesCard extends StatelessWidget {
  const LoadedRecomendedPlacesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapTicketsPalette = context.palette;
    final cheapTicketsTypography = context.typography;

    final recommendedPlaces =
        context.read<RecomendedPlacesCubit>().state.recomendedPlaces;

    return Container(
      key: const Key('success'),
      height: 216,
      padding: const EdgeInsets.all(
        16.0,
      ),
      decoration: ShapeDecoration(
        color: cheapTicketsPalette.cardBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: recommendedPlaces.length + 1,
        separatorBuilder: (context, index) {
          return Divider(
            height: 10,
            color: cheapTicketsPalette.secondaryCardBackColor,
            thickness: 1,
          );
        },
        itemBuilder: (context, index) {
          if (index == recommendedPlaces.length) {
            return const SizedBox();
          } else {
            final recommendedPlace = recommendedPlaces[index];
            return ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 0.0,
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  recommendedPlace.image,
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              title: Text(
                recommendedPlace.title,
                textAlign: TextAlign.start,
                style: cheapTicketsTypography.title3,
              ),
              subtitle: Text(
                'Популярное направление',
                textAlign: TextAlign.start,
                style: cheapTicketsTypography.text3,
              ),
              visualDensity: const VisualDensity(
                vertical: -2,
              ),
              onTap: () => context.read<SearchCardCubit>().updatePlaces(
                    arrival: recommendedPlace.title,
                  ),
            );
          }
        },
      ),
    );
  }
}
