import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/features/search/presentation/widgets/search_card.dart';
import 'package:cheap_tickets_app/features/offers/presentation/widgets/offers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AirTicketsBody extends StatelessWidget {
  const AirTicketsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapTicketsTypography = context.typography;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 36,
        ),
        Center(
          child: Text(
            'Поиск дешевых\nавиабилетов',
            textAlign: TextAlign.center,
            style: cheapTicketsTypography.title1,
          ),
        ),
        const SizedBox(
          height: 36,
        ),
        const SearchCard(),
        const SizedBox(
          height: 36,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: Text(
            'Музыкально отлететь',
            textAlign: TextAlign.start,
            style: cheapTicketsTypography.title1,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const Offers(),
      ],
    );
  }
}
