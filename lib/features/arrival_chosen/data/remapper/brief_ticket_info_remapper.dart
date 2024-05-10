import 'package:injectable/injectable.dart';
import 'package:cheap_tickets_app/core/remapper/remapper.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/data/models/brief_ticket_info_model.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/domain/entities/brief_ticket_info_entity.dart';
import 'package:intl/intl.dart';

@Named('BriefTicketInfoRemapper')
@Singleton(as: Remapper)
class BriefTicketInfoRemapper
    implements Remapper<BriefTicketInfoEntity, BriefTicketInfoModel> {
  @override
  BriefTicketInfoEntity fromModel(BriefTicketInfoModel model) {
    final timeRange = model.time.join(" ");
    final price = NumberFormat("###,###,###")
        .format(
          model.price['value'],
        )
        .replaceAll(",", " ");

    return BriefTicketInfoEntity(
      id: model.id,
      title: model.title,
      timeRange: timeRange,
      price: price,
    );
  }
}
