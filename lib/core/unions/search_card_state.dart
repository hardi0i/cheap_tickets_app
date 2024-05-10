import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_card_state.freezed.dart';

@freezed
sealed class SearchCardState<T> with _$SearchCardState<T> {
  const SearchCardState._();

  const factory SearchCardState.initial() = Initial<T>;

  const factory SearchCardState.modal() = Modal<T>;

  const factory SearchCardState.contryChosen() = ContryChosen<T>;

  const factory SearchCardState.none() = None<T>;

  bool get isInitial => this is Initial<T>;
  bool get isModal => this is Modal<T>;
  bool get isContryChosen => this is ContryChosen<T>;
  bool get isNone => this is None<T>;
}
