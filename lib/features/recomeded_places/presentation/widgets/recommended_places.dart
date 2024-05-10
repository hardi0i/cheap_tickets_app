import 'package:cheap_tickets_app/features/recomeded_places/presentation/widgets/loaded_recommended_places_card.dart';
import 'package:cheap_tickets_app/features/widgets/failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cheap_tickets_app/features/recomeded_places/presentation/cubit/recomended_places_cubit.dart';
import 'package:cheap_tickets_app/features/recomeded_places/presentation/widgets/loading_recomended_places_card.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    final recomendedPlacesStatus = context.select(
      (RecomendedPlacesCubit cubit) => cubit.state.status,
    );

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: recomendedPlacesStatus.maybeWhen(
        loading: () => const LoadingRecommendedPlacesCard(),
        success: () => const LoadedRecomendedPlacesCard(),
        failure: (e) => const FailureWdiget(),
        orElse: () => const SizedBox(),
      ),
    );
  }
}
