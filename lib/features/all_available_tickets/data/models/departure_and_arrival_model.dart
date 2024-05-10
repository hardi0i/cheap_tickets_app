import 'package:freezed_annotation/freezed_annotation.dart';

part 'departure_and_arrival_model.freezed.dart';
part 'departure_and_arrival_model.g.dart';

@freezed
class DepartureAndArriavalModel with _$DepartureAndArriavalModel {
  const factory DepartureAndArriavalModel({
    required String town,
    required String date,
    required String airport,
  }) = _DepartureAndArriavalModel;

  factory DepartureAndArriavalModel.fromJson(Map<String, dynamic> json) =>
      _$DepartureAndArriavalModelFromJson(json);
}
