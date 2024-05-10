import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/partial_tickets_info/partial_tickets_info_cubit.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/widgets/loaded_tickets_info.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/widgets/loading_tickets_info.dart';
import 'package:cheap_tickets_app/features/widgets/failure_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DirectFlights extends StatelessWidget {
  const DirectFlights({super.key});

  @override
  Widget build(BuildContext context) {
    final recomendedPlacesStatus = context.select(
      (PartialTicketsInfoCubit cubit) => cubit.state.status,
    );

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: recomendedPlacesStatus.maybeWhen(
        loading: () => const LoadingTicketsInfo(
          key: Key('LoadingTicketsInfo'),
        ),
        success: () => const LoadedTicketsInfo(
          key: Key('LoadedTicketsInfo'),
        ),
        failure: (e) => const FailureWdiget(),
        orElse: () => const SizedBox(),
      ),
    );
  }
}
