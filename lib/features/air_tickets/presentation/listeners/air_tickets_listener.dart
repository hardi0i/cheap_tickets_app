import 'package:auto_route/auto_route.dart';
import 'package:cheap_tickets_app/config/routes/cheap_tickets_router.dart';
import 'package:cheap_tickets_app/config/theme/cheap_tickets_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cheap_tickets_app/core/di/cheap_tickets_di.dart';
import 'package:cheap_tickets_app/features/modal_sheet/custom_modal_bottom_sheet.dart';
import 'package:cheap_tickets_app/features/recomeded_places/presentation/cubit/recomended_places_cubit.dart';
import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit.dart';
import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit_state.dart';

class AppTicketsListener extends StatelessWidget {
  const AppTicketsListener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SearchCardCubit, SearchCardCubitState>(
          listenWhen: (previous, current) =>
              previous.state.isModal != current.state.isModal &&
              current.state.isModal,
          listener: (context, state) async {
            await showModalBottomSheet(
              context: context,
              enableDrag: true,
              isScrollControlled: true,
              backgroundColor: CheapTicketsColors.grey2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              useRootNavigator: true,
              showDragHandle: true,
              builder: (_) {
                return BlocProvider<RecomendedPlacesCubit>(
                  create: (context) => injector()..getRecomendedPlaces(),
                  child: const CustomModalBottomSheet(),
                );
              },
            ).then(
              (value) {
                if (value == null) {
                  context.read<SearchCardCubit>().cardStateToTickets();
                }
              },
            );
          },
        ),
        BlocListener<SearchCardCubit, SearchCardCubitState>(
          listenWhen: (previous, current) =>
              previous.state.isContryChosen != current.state.isContryChosen &&
              current.state.isContryChosen,
          listener: (context, state) async {
            await context.router.maybePop('not null').then(
                  (_) => context.router.push(
                    const ArrivalChosenRoute(),
                  ),
                );
          },
        ),
      ],
      child: child,
    );
  }
}
