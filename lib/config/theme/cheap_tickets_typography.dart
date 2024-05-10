import 'package:cheap_tickets_app/config/theme/cheap_tickets_colors.dart';
import 'package:flutter/material.dart';

class CheapTicketsTypography extends ThemeExtension<CheapTicketsTypography> {
  const CheapTicketsTypography({
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.buttonText1,
    required this.hintText1,
    required this.tabText,
  });

  final TextStyle title1;
  final TextStyle? title2;
  final TextStyle? title3;
  final TextStyle? title4;
  final TextStyle? text1;
  final TextStyle? text2;
  final TextStyle? text3;
  final TextStyle? buttonText1;
  final TextStyle? hintText1;
  final TextStyle? tabText;

  @override
  CheapTicketsTypography copyWith({
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? title3,
    TextStyle? title4,
    TextStyle? text1,
    TextStyle? text2,
    TextStyle? text3,
    TextStyle? buttonText1,
    TextStyle? hintText1,
    TextStyle? tabText,
  }) {
    return CheapTicketsTypography(
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      title3: title3 ?? this.title3,
      title4: title4 ?? this.title4,
      text1: text1 ?? this.text1,
      text2: text2 ?? this.text2,
      text3: text2 ?? this.text3,
      buttonText1: buttonText1 ?? this.buttonText1,
      hintText1: hintText1 ?? this.hintText1,
      tabText: tabText ?? this.tabText,
    );
  }

  @override
  CheapTicketsTypography lerp(
    covariant CheapTicketsTypography? other,
    double t,
  ) {
    return CheapTicketsTypography(
      title1: TextStyle.lerp(title1, other?.title1, t)!,
      title2: TextStyle.lerp(title2, other?.title2, t)!,
      title3: TextStyle.lerp(title3, other?.title3, t)!,
      title4: TextStyle.lerp(title4, other?.title4, t)!,
      text1: TextStyle.lerp(text1, other?.text1, t)!,
      text2: TextStyle.lerp(text2, other?.text2, t)!,
      text3: TextStyle.lerp(text3, other?.text3, t)!,
      buttonText1: TextStyle.lerp(buttonText1, other?.buttonText1, t)!,
      hintText1: TextStyle.lerp(hintText1, other?.hintText1, t)!,
      tabText: TextStyle.lerp(tabText, other?.tabText, t)!,
    );
  }

  static get dark => const CheapTicketsTypography(
        title1: TextStyle(
          color: CheapTicketsColors.white,
          fontFamily: 'SFProDisplay',
          fontWeight: FontWeight.w700,
          fontSize: 22,
          height: 1.2,
        ),
        title2: TextStyle(
          color: CheapTicketsColors.white,
          fontFamily: 'SFProDisplay',
          fontWeight: FontWeight.w700,
          fontSize: 20,
          height: 1.2,
        ),
        title3: TextStyle(
          color: CheapTicketsColors.white,
          fontFamily: 'SFProDisplay',
          fontWeight: FontWeight.w700,
          fontSize: 16,
          height: 1.2,
        ),
        title4: TextStyle(
          color: CheapTicketsColors.white,
          fontFamily: 'SFProDisplay',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 1.2,
        ),
        text1: TextStyle(
          color: CheapTicketsColors.white,
          fontFamily: 'SFProDisplay',
          fontSize: 16,
          height: 1.2,
        ),
        text2: TextStyle(
          color: CheapTicketsColors.white,
          fontFamily: 'SFProDisplay',
          fontSize: 14,
          height: 1.2,
        ),
        text3: TextStyle(
          color: CheapTicketsColors.grey5,
          fontFamily: 'SFProDisplay',
          fontSize: 14,
          height: 1.2,
        ),
        buttonText1: TextStyle(
          color: CheapTicketsColors.white,
          fontFamily: 'SFProDisplay',
          fontWeight: FontWeight.w700,
          fontSize: 16,
          height: 1.3,
        ),
        hintText1: TextStyle(
          color: CheapTicketsColors.grey6,
          fontFamily: 'SFProDisplay',
          fontWeight: FontWeight.w700,
          fontSize: 16,
          height: 1.3,
        ),
        tabText: TextStyle(
          color: CheapTicketsColors.grey6,
          fontFamily: 'SFProDisplay',
          fontSize: 10,
          height: 1.1,
        ),
      );
}
