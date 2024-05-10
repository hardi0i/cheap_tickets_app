import 'package:cheap_tickets_app/core/unions/base_status.dart';
import 'package:cheap_tickets_app/core/unions/search_card_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_card_cubit_state.freezed.dart';

@freezed
class SearchCardCubitState with _$SearchCardCubitState {
  const factory SearchCardCubitState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default(SearchCardState.initial()) SearchCardState state,
    @Default('') String departure,
    @Default('') String arrival,
  }) = _SearchCardCubitState;
}
