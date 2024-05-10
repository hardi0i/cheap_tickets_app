import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'package:cheap_tickets_app/features/offers/data/models/offers_wrapper_model.dart';

@lazySingleton
class OfferLocalDataSource {
  Future<OffersWrapperModel> getOffers() async {
    final Map<String, dynamic> string = await Future.delayed(
      const Duration(milliseconds: 1200),
      () async => jsonDecode(
        await rootBundle.loadString(
          'assets/dummy_data/dummy_offers.json',
        ),
      ),
    );

    return OffersWrapperModel.fromJson(string);
  }
}
