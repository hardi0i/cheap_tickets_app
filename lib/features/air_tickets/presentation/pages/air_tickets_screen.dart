import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:auto_route/auto_route.dart';
import 'package:cheap_tickets_app/core/di/cheap_tickets_di.dart';
import 'package:cheap_tickets_app/features/air_tickets/presentation/listeners/air_tickets_listener.dart';
import 'package:cheap_tickets_app/features/air_tickets/presentation/widgets/air_tickets_body.dart';
import 'package:cheap_tickets_app/features/offers/presentation/cubit/offers_cubit.dart';

@RoutePage()
class AirTicketsScreen extends StatelessWidget {
  const AirTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OffersCubit>(
          create: (_) => injector()..getOffers(),
        ),
      ],
      child: const AppTicketsListener(
        child: AirTicketsBody(),
      ),
    );
  }
}
