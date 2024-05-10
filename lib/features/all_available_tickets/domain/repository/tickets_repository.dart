import 'package:cheap_tickets_app/features/all_available_tickets/domain/entities/ticket_enity.dart';

abstract interface class TicketsRepository {
  Future<List<TicketEntity>> getTicketsRemote();

  Future<List<TicketEntity>> getTicketsLocal();
}
