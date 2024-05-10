import 'dart:convert';

import 'package:cheap_tickets_app/features/arrival_chosen/data/models/brief_tickets_wrapper_model.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PartialTickerLocalDataSource {
  Future<BriefTicketsWrapperModel> partialTicketsOffer() async {
    final Map<String, dynamic> string = await Future.delayed(
      const Duration(milliseconds: 1200),
      () async => jsonDecode(
        await rootBundle.loadString(
          'assets/dummy_data/dummy_partial_tickets.json',
        ),
      ),
    );

    return BriefTicketsWrapperModel.fromJson(string);
  }
}
