import 'package:auto_route/auto_route.dart';
import 'package:cheap_tickets_app/core/di/cheap_tickets_di.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/presentation/cubit/tickets_cubit.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/presentation/widgets/bottom_floating_button.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/presentation/widgets/tickets_body.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/travel_dates/travel_dates_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TicketsScreen extends StatelessWidget {
  const TicketsScreen({
    super.key,
    required this.travelDatesCubit,
  });

  final TravelDatesCubit travelDatesCubit;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TravelDatesCubit>.value(
          value: travelDatesCubit,
        ),
        BlocProvider<TicketsCubit>(
          create: (context) => injector()..getTickets(),
        ),
      ],
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: TicketsBody(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingBottomButtons(),
      ),
    );
  }
}
