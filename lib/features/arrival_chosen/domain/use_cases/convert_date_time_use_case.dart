import 'package:cheap_tickets_app/core/use_cases/use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@lazySingleton
class ConvertDateTimeUseCase implements UseCase<String, DateTime> {
  @override
  Future<String> call({required DateTime? params}) async {
    final formattedDate = DateFormat('d MMMM, E', 'ru').format(
      params ?? DateTime.now(),
    );

    return Future.value(formattedDate);
  }
}
