import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/core/constants/assets_path.dart';

class SubscriptionButton extends StatefulWidget {
  const SubscriptionButton({super.key});

  @override
  State<SubscriptionButton> createState() => _SubscriptionButtonState();
}

class _SubscriptionButtonState extends State<SubscriptionButton> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    final cheapTicketsPalette = context.palette;
    final cheapTicketsTypography = context.typography;

    return Theme(
      data: ThemeData(
        useMaterial3: false,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashFactory: InkRipple.splashFactory,
      ),
      child: Container(
        width: double.infinity,
        height: 51,
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: ListTile(
          onTap: () => setState(() {
            switchValue = !switchValue;
          }),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          tileColor: cheapTicketsPalette.modalBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          titleAlignment: ListTileTitleAlignment.center,
          leading: SvgPicture.asset(
            bellIconAsset,
          ),
          title: Text(
            'Подписка на цену',
            style: cheapTicketsTypography.text1,
          ),
          trailing: Switch(
            onChanged: (value) => setState(() {
              switchValue = value;
            }),
            value: switchValue,
          ),
        ),
      ),
    );
  }
}
