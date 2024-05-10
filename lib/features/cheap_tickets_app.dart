import 'package:cheap_tickets_app/config/theme/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cheap_tickets_app/config/routes/cheap_tickets_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CheapTicketsApp extends StatelessWidget {
  CheapTicketsApp({super.key});

  final _router = CheapTicketsRouter();

  @override
  Widget build(BuildContext context) {
    final theme = context.select(
      (ThemeCubit cubit) => cubit.state,
    );

    return MaterialApp.router(
      title: 'Дешевые авиабилеты',
      theme: theme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
