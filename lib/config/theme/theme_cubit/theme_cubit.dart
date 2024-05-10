import 'package:cheap_tickets_app/config/theme/cheap_tickets_colors.dart';
import 'package:cheap_tickets_app/config/theme/cheap_tickets_palette.dart';
import 'package:cheap_tickets_app/config/theme/cheap_tickets_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_darkTheme);

  //Dark theme
  static final _darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    splashFactory: InkRipple.splashFactory,
    scaffoldBackgroundColor: CheapTicketsColors.black,
    bottomSheetTheme: const BottomSheetThemeData(
      surfaceTintColor: CheapTicketsColors.grey2,
    ),
    extensions: <ThemeExtension<dynamic>>[
      CheapTicketsPalette.dark,
      CheapTicketsTypography.dark,
    ],
  );
}
