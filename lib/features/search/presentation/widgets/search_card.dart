import 'package:cheap_tickets_app/features/search/presentation/widgets/search_card_states/search_card_chosen_contry_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit.dart';
import 'package:cheap_tickets_app/features/search/presentation/widgets/search_card_states/search_card_initial.dart';
import 'package:cheap_tickets_app/features/search/presentation/widgets/search_card_states/serach_card_modal_view.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cardState = context.select(
      (SearchCardCubit cubit) => cubit.state.state,
    );

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: cardState.maybeWhen(
        initial: () => const SearchCardInitial(
          key: Key('SearchCardInitial'),
        ),
        modal: () => const SearchCardModalView(
          key: Key('SearchCardModalView'),
        ),
        contryChosen: () => const SearchCardCountryChosenView(
          key: Key('SearchCardModalView'),
        ),
        orElse: () => const SizedBox(),
      ),
    );
  }
}
