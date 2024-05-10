import 'package:cheap_tickets_app/config/theme/cheap_tickets_colors.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/domain/entities/brief_ticket_info_entity.dart';
import 'package:flutter/material.dart';

class CustomTicketTile extends StatelessWidget {
  const CustomTicketTile({
    super.key,
    required this.ticket,
  });

  final BriefTicketInfoEntity ticket;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    final cheapTicketsTypography = context.typography;

    return SizedBox(
      height: 40,
      width: deviceWidth * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: ticket.id.toColor,
            maxRadius: 12,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: deviceWidth * 0.70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket.title,
                      style: cheapTicketsTypography.title4,
                    ),
                    Text(
                      '${ticket.price} ₽ >',
                      style: cheapTicketsTypography.title4?.copyWith(
                        color: CheapTicketsColors.blue1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: deviceWidth * 0.70,
                child: Text(
                  ticket.timeRange,
                  overflow: TextOverflow.ellipsis,
                  style: cheapTicketsTypography.text2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

extension on int {
  Color get toColor {
    switch (this) {
      case 1:
        return CheapTicketsColors.red1;
      case 10:
        return CheapTicketsColors.blue1;
      case 30:
        return CheapTicketsColors.white;
      default:
        return CheapTicketsColors.black;
    }
  }
}
