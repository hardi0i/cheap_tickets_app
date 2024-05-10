// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_wrapper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketsWrapperModel _$TicketsWrapperModelFromJson(Map<String, dynamic> json) {
  return _TicketsWrapperModel.fromJson(json);
}

/// @nodoc
mixin _$TicketsWrapperModel {
  List<TicketModel> get tickets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketsWrapperModelCopyWith<TicketsWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsWrapperModelCopyWith<$Res> {
  factory $TicketsWrapperModelCopyWith(
          TicketsWrapperModel value, $Res Function(TicketsWrapperModel) then) =
      _$TicketsWrapperModelCopyWithImpl<$Res, TicketsWrapperModel>;
  @useResult
  $Res call({List<TicketModel> tickets});
}

/// @nodoc
class _$TicketsWrapperModelCopyWithImpl<$Res, $Val extends TicketsWrapperModel>
    implements $TicketsWrapperModelCopyWith<$Res> {
  _$TicketsWrapperModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketsWrapperModelImplCopyWith<$Res>
    implements $TicketsWrapperModelCopyWith<$Res> {
  factory _$$TicketsWrapperModelImplCopyWith(_$TicketsWrapperModelImpl value,
          $Res Function(_$TicketsWrapperModelImpl) then) =
      __$$TicketsWrapperModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TicketModel> tickets});
}

/// @nodoc
class __$$TicketsWrapperModelImplCopyWithImpl<$Res>
    extends _$TicketsWrapperModelCopyWithImpl<$Res, _$TicketsWrapperModelImpl>
    implements _$$TicketsWrapperModelImplCopyWith<$Res> {
  __$$TicketsWrapperModelImplCopyWithImpl(_$TicketsWrapperModelImpl _value,
      $Res Function(_$TicketsWrapperModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$TicketsWrapperModelImpl(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketsWrapperModelImpl implements _TicketsWrapperModel {
  const _$TicketsWrapperModelImpl({required final List<TicketModel> tickets})
      : _tickets = tickets;

  factory _$TicketsWrapperModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketsWrapperModelImplFromJson(json);

  final List<TicketModel> _tickets;
  @override
  List<TicketModel> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'TicketsWrapperModel(tickets: $tickets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsWrapperModelImpl &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsWrapperModelImplCopyWith<_$TicketsWrapperModelImpl> get copyWith =>
      __$$TicketsWrapperModelImplCopyWithImpl<_$TicketsWrapperModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketsWrapperModelImplToJson(
      this,
    );
  }
}

abstract class _TicketsWrapperModel implements TicketsWrapperModel {
  const factory _TicketsWrapperModel(
      {required final List<TicketModel> tickets}) = _$TicketsWrapperModelImpl;

  factory _TicketsWrapperModel.fromJson(Map<String, dynamic> json) =
      _$TicketsWrapperModelImpl.fromJson;

  @override
  List<TicketModel> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$TicketsWrapperModelImplCopyWith<_$TicketsWrapperModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
