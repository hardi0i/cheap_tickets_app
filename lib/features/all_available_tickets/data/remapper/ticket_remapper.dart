import 'package:cheap_tickets_app/features/all_available_tickets/data/models/ticket_model.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/domain/entities/ticket_enity.dart';
import 'package:injectable/injectable.dart';
import 'package:cheap_tickets_app/core/remapper/remapper.dart';
import 'package:intl/intl.dart';

@Named('TicketRemapper')
@Singleton(as: Remapper)
class TicketRemapper implements Remapper<TicketEntity, TicketModel> {
  @override
  TicketEntity fromModel(TicketModel model) {
    final price = NumberFormat("###,###,###")
        .format(
          model.price['value'],
        )
        .replaceAll(",", " ");

    final departureDateTime = DateTime.parse(model.departure.date);
    final arrivalDateTime = DateTime.parse(model.arrival.date);

    final formattedDepartureTime = DateFormat.Hm().format(departureDateTime);
    final formattedArrivalTime = DateFormat.Hm().format(arrivalDateTime);

    Duration difference = arrivalDateTime.difference(departureDateTime);

    String hours = difference.inHours.toString().padLeft(0, '2');
    String minutes =
        difference.inMinutes.remainder(60).toString().padLeft(2, '0');

    return TicketEntity(
      id: model.id,
      price: price,
      badge: model.badge,
      departureAiroport: model.departure.airport,
      arriavlAiroport: model.arrival.airport,
      departureTime: formattedDepartureTime,
      arrivalTime: formattedArrivalTime,
      company: model.company,
      timeDifference: '$hoursч $minutesмин',
      hasTransfer: model.hasTransfer,
    );
  }
}
