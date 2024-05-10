import 'package:cheap_tickets_app/core/use_cases/use_case.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/domain/entities/ticket_enity.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/domain/repository/tickets_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAvailavleTicketsUseCase extends UseCase<List<TicketEntity>, void> {
  GetAvailavleTicketsUseCase(this._ticketsRepository);

  final TicketsRepository _ticketsRepository;

  @override
  Future<List<TicketEntity>> call({void params}) async {
    final tickets = await _ticketsRepository.getTicketsLocal();

    return tickets;
  }
}
