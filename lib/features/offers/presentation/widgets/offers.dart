import 'package:cheap_tickets_app/features/offers/presentation/cubit/offers_cubit.dart';
import 'package:cheap_tickets_app/features/offers/presentation/widgets/loaded_offers.dart';
import 'package:cheap_tickets_app/features/offers/presentation/widgets/loading_offers.dart';
import 'package:cheap_tickets_app/features/widgets/failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    final offersStatus = context.select(
      (OffersCubit cubit) => cubit.state.status,
    );

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: offersStatus.maybeWhen(
        loading: () => const LoadingOffers(),
        success: () => const LoadedOffers(),
        failure: (e) => const FailureWdiget(),
        orElse: () => const SizedBox(),
      ),
    );
  }
}
