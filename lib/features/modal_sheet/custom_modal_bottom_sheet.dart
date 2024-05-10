import 'package:flutter/material.dart';

import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/features/recomeded_places/presentation/widgets/recommended_places.dart';
import 'package:cheap_tickets_app/features/search/presentation/widgets/search_card.dart';
import 'package:cheap_tickets_app/features/modal_sheet/suggestions.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapTicketsPalette = context.palette;

    return FractionallySizedBox(
      heightFactor: 0.95,
      child: Container(
        padding: const EdgeInsets.all(
          16.0,
        ),
        color: cheapTicketsPalette.modalBackgroundColor,
        child: const Column(
          children: [
            SearchCard(),
            SizedBox(
              height: 28,
            ),
            Suggestions(),
            SizedBox(
              height: 28,
            ),
            RecommendedPlaces(),
          ],
        ),
      ),
    );
  }
}
