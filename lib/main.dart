import 'package:cheap_tickets_app/config/theme/theme_cubit/theme_cubit.dart';
import 'package:cheap_tickets_app/core/di/cheap_tickets_di.dart';
import 'package:cheap_tickets_app/features/cheap_tickets_app.dart';
import 'package:cheap_tickets_app/features/search/presentation/cubit/search_card_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => injector(),
        ),
        BlocProvider<SearchCardCubit>(
          create: (_) => injector()..getLastTypedPlace(),
        ),
      ],
      child: CheapTicketsApp(),
    ),
  );
}
