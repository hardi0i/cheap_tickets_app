import 'package:cheap_tickets_app/config/theme/cheap_tickets_colors.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/core/constants/assets_path.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class FloatingBottomButtons extends StatelessWidget {
  const FloatingBottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapTicketsTypography = context.typography;

    return Container(
      decoration: BoxDecoration(
        color: CheapTicketsColors.blue1,
        borderRadius: BorderRadius.circular(
          50,
        ),
      ),
      height: 37,
      width: 198,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  settingsIconAsset,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Фильтр',
                  style: cheapTicketsTypography.title4,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  diagramIconAsset,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Фильтр',
                  style: cheapTicketsTypography.title4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
