import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:cheap_tickets_app/features/recomeded_places/data/models/recomded_places_wrapper_model.dart';

@lazySingleton
class RecomendedPlacesRemoteDataSource {
  Future<RecomendedPlacesWrapperModel> recomendedList() async {
    final Map<String, dynamic> string = await Future.delayed(
      const Duration(milliseconds: 1200),
      () async => jsonDecode(
        await rootBundle.loadString(
          'assets/dummy_data/dummy_recomendations.json',
        ),
      ),
    );

    return RecomendedPlacesWrapperModel.fromJson(string);
  }
}
