import 'package:cheap_tickets_app/core/unions/base_status.dart';
import 'package:cheap_tickets_app/features/recomeded_places/domain/entity/recomended_place_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recomended_places_cubit_state.freezed.dart';

@freezed
class RecomendedPlacesCubitState with _$RecomendedPlacesCubitState {
  const factory RecomendedPlacesCubitState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<RecomendedPlaceEntity> recomendedPlaces,
  }) = _RecomendedPlacesCubitState;
}
