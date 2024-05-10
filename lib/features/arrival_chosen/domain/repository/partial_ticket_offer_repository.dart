import 'package:cheap_tickets_app/features/arrival_chosen/domain/entities/brief_ticket_info_entity.dart';

abstract interface class PartialTicketOfferRepository {
  Future<List<BriefTicketInfoEntity>> remoteGetPartialTicketOffer();

  Future<List<BriefTicketInfoEntity>> localGetPartialTicketOffer();
}
