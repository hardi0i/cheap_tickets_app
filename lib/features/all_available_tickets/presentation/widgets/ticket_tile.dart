import 'package:cheap_tickets_app/config/theme/cheap_tickets_colors.dart';
import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/domain/entities/ticket_enity.dart';
import 'package:flutter/material.dart';

class TicketTile extends StatelessWidget {
  const TicketTile({
    super.key,
    required this.ticket,
  });

  final TicketEntity ticket;

  @override
  Widget build(BuildContext context) {
    final cheapTicketsPalette = context.palette;
    final cheapTicketsTypography = context.typography;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 117,
          padding: const EdgeInsets.all(
            16.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
            color: cheapTicketsPalette.thirdCardBackColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${ticket.price} ₽',
                style: cheapTicketsTypography.title1,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: ticket.company.toColor,
                    maxRadius: 12,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${ticket.departureTime} - ${ticket.arrivalTime}',
                                style: cheapTicketsTypography.title4,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                '${ticket.departureAiroport}       ${ticket.arriavlAiroport}',
                                style: cheapTicketsTypography.title4?.copyWith(
                                  color: cheapTicketsPalette.unselectedColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            '${ticket.timeDifference} ${ticket.hasTransfer ? '' : '/ Без пересадок'}',
                            style: cheapTicketsTypography.text2,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        if (ticket.badge != null)
          Positioned(
            top: -15,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: CheapTicketsColors.blue1,
                borderRadius: BorderRadius.circular(
                  50,
                ),
              ),
              child: Text(
                ticket.badge!,
                style: cheapTicketsTypography.title4,
              ),
            ),
          ),
      ],
    );
  }
}

extension on String {
  Color get toColor {
    switch (this) {
      case 'Уральские авиалинии':
        return CheapTicketsColors.red1;
      case 'Якутия':
        return CheapTicketsColors.darkBlue;
      case 'Победа':
        return CheapTicketsColors.blue;
      case 'Турецкие авиалинии':
        return CheapTicketsColors.red;
      case 'Аэрофлот':
        return CheapTicketsColors.white;

      default:
        return CheapTicketsColors.black;
    }
  }
}
