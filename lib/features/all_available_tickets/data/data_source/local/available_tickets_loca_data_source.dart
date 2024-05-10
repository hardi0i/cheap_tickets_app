import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'package:cheap_tickets_app/features/all_available_tickets/data/models/tickets_wrapper_model.dart';

@lazySingleton
class AvailableTicketsLocalDataSource {
  Future<TicketsWrapperModel> getTickets() async {
    final Map<String, dynamic> string = await Future.delayed(
      const Duration(milliseconds: 1200),
      () async => jsonDecode(
        await rootBundle.loadString(
          'assets/dummy_data/dummy_tickets.json',
        ),
      ),
    );

    return TicketsWrapperModel.fromJson(string);
  }
}
