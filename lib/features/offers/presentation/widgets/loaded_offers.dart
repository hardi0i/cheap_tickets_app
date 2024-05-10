import 'package:cheap_tickets_app/features/offers/presentation/cubit/offers_cubit.dart';
import 'package:cheap_tickets_app/features/offers/presentation/widgets/offer_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadedOffers extends StatelessWidget {
  const LoadedOffers({super.key});

  @override
  Widget build(BuildContext context) {
    final offers = context.read<OffersCubit>().state.offers;

    return SizedBox(
      height: 214,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        itemCount: offers.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
        itemBuilder: (context, index) {
          return OfferTile(
            offer: offers[index],
          );
        },
      ),
    );
  }
}
