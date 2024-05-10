import 'package:cheap_tickets_app/config/theme/cheap_tickets_colors.dart';
import 'package:flutter/material.dart';

class CheapTicketsPalette extends ThemeExtension<CheapTicketsPalette> {
  const CheapTicketsPalette({
    required this.primaryLightColor,
    required this.backgroundColor,
    required this.shadowColor,
    required this.unselectedColor,
    required this.unselectedIconColor,
    required this.selectedColor,
    required this.cardBackgroundColor,
    required this.secondaryCardBackColor,
    required this.thirdCardBackColor,
    required this.lightDarkColor,
    required this.dividerColor,
    required this.modalBackgroundColor,
  });

  final Color primaryLightColor;
  final Color backgroundColor;
  final Color shadowColor;
  final Color unselectedColor;
  final Color unselectedIconColor;
  final Color selectedColor;
  final Color cardBackgroundColor;
  final Color secondaryCardBackColor;
  final Color thirdCardBackColor;
  final Color lightDarkColor;
  final Color dividerColor;
  final Color modalBackgroundColor;

  @override
  CheapTicketsPalette copyWith({
    Color? primaryLightColor,
    Color? backgroundColor,
    Color? shadowColor,
    Color? unselectedColor,
    Color? unselectedIconColor,
    Color? selectedColor,
    Color? cardBackgroundColor,
    Color? secondaryCardBackColor,
    Color? thirdCardBackColor,
    Color? lightDarkColor,
    Color? dividerColor,
    Color? modalBackgroundColor,
  }) {
    return CheapTicketsPalette(
      primaryLightColor: primaryLightColor ?? this.primaryLightColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shadowColor: shadowColor ?? this.shadowColor,
      unselectedColor: unselectedColor ?? this.unselectedColor,
      unselectedIconColor: unselectedIconColor ?? this.unselectedIconColor,
      selectedColor: selectedColor ?? this.selectedColor,
      cardBackgroundColor: cardBackgroundColor ?? this.cardBackgroundColor,
      secondaryCardBackColor:
          secondaryCardBackColor ?? this.secondaryCardBackColor,
      thirdCardBackColor: thirdCardBackColor ?? this.thirdCardBackColor,
      lightDarkColor: lightDarkColor ?? this.lightDarkColor,
      dividerColor: dividerColor ?? this.dividerColor,
      modalBackgroundColor: modalBackgroundColor ?? this.modalBackgroundColor,
    );
  }

  @override
  CheapTicketsPalette lerp(covariant CheapTicketsPalette? other, double t) {
    return CheapTicketsPalette(
      primaryLightColor:
          Color.lerp(primaryLightColor, other?.primaryLightColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other?.backgroundColor, t)!,
      shadowColor: Color.lerp(shadowColor, other?.shadowColor, t)!,
      unselectedColor: Color.lerp(unselectedColor, other?.unselectedColor, t)!,
      unselectedIconColor:
          Color.lerp(unselectedIconColor, other?.unselectedIconColor, t)!,
      selectedColor: Color.lerp(selectedColor, other?.selectedColor, t)!,
      cardBackgroundColor:
          Color.lerp(cardBackgroundColor, other?.cardBackgroundColor, t)!,
      secondaryCardBackColor:
          Color.lerp(secondaryCardBackColor, other?.secondaryCardBackColor, t)!,
      thirdCardBackColor:
          Color.lerp(thirdCardBackColor, other?.thirdCardBackColor, t)!,
      lightDarkColor: Color.lerp(lightDarkColor, other?.lightDarkColor, t)!,
      dividerColor: Color.lerp(dividerColor, other?.dividerColor, t)!,
      modalBackgroundColor:
          Color.lerp(modalBackgroundColor, other?.modalBackgroundColor, t)!,
    );
  }

  static get dark => CheapTicketsPalette(
        primaryLightColor: CheapTicketsColors.white,
        backgroundColor: CheapTicketsColors.black,
        shadowColor: CheapTicketsColors.black.withOpacity(0.35),
        unselectedColor: CheapTicketsColors.grey6,
        unselectedIconColor: CheapTicketsColors.grey5,
        selectedColor: CheapTicketsColors.blue,
        cardBackgroundColor: CheapTicketsColors.grey3,
        secondaryCardBackColor: CheapTicketsColors.grey4,
        thirdCardBackColor: CheapTicketsColors.grey1,
        lightDarkColor: CheapTicketsColors.grey7,
        dividerColor: CheapTicketsColors.grey6.withOpacity(0.6235),
        modalBackgroundColor: CheapTicketsColors.grey2,
      );
}
