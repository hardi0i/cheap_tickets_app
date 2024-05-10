import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/core/constants/assets_path.dart';
import 'package:cheap_tickets_app/features/search/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchCardInitial extends StatelessWidget {
  const SearchCardInitial({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapTicketsPallete = context.palette;

    final deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      constraints: BoxConstraints(
        minWidth: 328,
        maxWidth: deviceWidth,
        minHeight: 122,
        maxHeight: 122,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: ShapeDecoration(
        color: cheapTicketsPallete.cardBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              16,
            ),
          ),
        ),
      ),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 296,
          maxWidth: deviceWidth,
          minHeight: 90,
          maxHeight: 90,
        ),
        width: double.infinity,
        margin: const EdgeInsets.all(
          16,
        ),
        padding: const EdgeInsets.all(
          16,
        ),
        decoration: ShapeDecoration(
          color: cheapTicketsPallete.secondaryCardBackColor,
          shadows: [
            BoxShadow(
              color: cheapTicketsPallete.shadowColor,
              spreadRadius: 0.5,
              blurRadius: 2,
              offset: const Offset(0, 5),
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                16,
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              searchIconAsset,
              height: 16,
              colorFilter: ColorFilter.mode(
                cheapTicketsPallete.lightDarkColor,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const TextFields(),
          ],
        ),
      ),
    );
  }
}
