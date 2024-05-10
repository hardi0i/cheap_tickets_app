import 'package:auto_route/auto_route.dart';
import 'package:cheap_tickets_app/core/di/cheap_tickets_di.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/partial_tickets_info/partial_tickets_info_cubit.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/travel_dates/travel_dates_cubit.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/widgets/arrival_chosen_body.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ArrivalChosenScreen extends StatelessWidget {
  const ArrivalChosenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TravelDatesCubit>(
          create: (_) => injector()..changeDepartureDate(DateTime.now()),
        ),
        BlocProvider<PartialTicketsInfoCubit>(
          create: (context) => injector()..init(),
        ),
      ],
      child: const ArrivalChosenBody(),
    );
  }
}
