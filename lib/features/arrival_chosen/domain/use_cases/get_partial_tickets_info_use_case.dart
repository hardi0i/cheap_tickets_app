import 'package:cheap_tickets_app/core/use_cases/use_case.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/domain/entities/brief_ticket_info_entity.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/domain/repository/partial_ticket_offer_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPartialTicketsInfoUseCase
    implements UseCase<List<BriefTicketInfoEntity>, void> {
  GetPartialTicketsInfoUseCase(this._ticketOfferRepository);

  final PartialTicketOfferRepository _ticketOfferRepository;

  @override
  Future<List<BriefTicketInfoEntity>> call({void params}) async {
    final ticketsOffes =
        await _ticketOfferRepository.localGetPartialTicketOffer();

    return ticketsOffes;
  }
}
