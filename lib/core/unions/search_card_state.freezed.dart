// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchCardState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modal,
    required TResult Function() contryChosen,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? modal,
    TResult? Function()? contryChosen,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modal,
    TResult Function()? contryChosen,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Modal<T> value) modal,
    required TResult Function(ContryChosen<T> value) contryChosen,
    required TResult Function(None<T> value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Modal<T> value)? modal,
    TResult? Function(ContryChosen<T> value)? contryChosen,
    TResult? Function(None<T> value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Modal<T> value)? modal,
    TResult Function(ContryChosen<T> value)? contryChosen,
    TResult Function(None<T> value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCardStateCopyWith<T, $Res> {
  factory $SearchCardStateCopyWith(
          SearchCardState<T> value, $Res Function(SearchCardState<T>) then) =
      _$SearchCardStateCopyWithImpl<T, $Res, SearchCardState<T>>;
}

/// @nodoc
class _$SearchCardStateCopyWithImpl<T, $Res, $Val extends SearchCardState<T>>
    implements $SearchCardStateCopyWith<T, $Res> {
  _$SearchCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SearchCardStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> extends Initial<T> {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'SearchCardState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modal,
    required TResult Function() contryChosen,
    required TResult Function() none,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? modal,
    TResult? Function()? contryChosen,
    TResult? Function()? none,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modal,
    TResult Function()? contryChosen,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Modal<T> value) modal,
    required TResult Function(ContryChosen<T> value) contryChosen,
    required TResult Function(None<T> value) none,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Modal<T> value)? modal,
    TResult? Function(ContryChosen<T> value)? contryChosen,
    TResult? Function(None<T> value)? none,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Modal<T> value)? modal,
    TResult Function(ContryChosen<T> value)? contryChosen,
    TResult Function(None<T> value)? none,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> extends SearchCardState<T> {
  const factory Initial() = _$InitialImpl<T>;
  const Initial._() : super._();
}

/// @nodoc
abstract class _$$ModalImplCopyWith<T, $Res> {
  factory _$$ModalImplCopyWith(
          _$ModalImpl<T> value, $Res Function(_$ModalImpl<T>) then) =
      __$$ModalImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ModalImplCopyWithImpl<T, $Res>
    extends _$SearchCardStateCopyWithImpl<T, $Res, _$ModalImpl<T>>
    implements _$$ModalImplCopyWith<T, $Res> {
  __$$ModalImplCopyWithImpl(
      _$ModalImpl<T> _value, $Res Function(_$ModalImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ModalImpl<T> extends Modal<T> {
  const _$ModalImpl() : super._();

  @override
  String toString() {
    return 'SearchCardState<$T>.modal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ModalImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modal,
    required TResult Function() contryChosen,
    required TResult Function() none,
  }) {
    return modal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? modal,
    TResult? Function()? contryChosen,
    TResult? Function()? none,
  }) {
    return modal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modal,
    TResult Function()? contryChosen,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (modal != null) {
      return modal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Modal<T> value) modal,
    required TResult Function(ContryChosen<T> value) contryChosen,
    required TResult Function(None<T> value) none,
  }) {
    return modal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Modal<T> value)? modal,
    TResult? Function(ContryChosen<T> value)? contryChosen,
    TResult? Function(None<T> value)? none,
  }) {
    return modal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Modal<T> value)? modal,
    TResult Function(ContryChosen<T> value)? contryChosen,
    TResult Function(None<T> value)? none,
    required TResult orElse(),
  }) {
    if (modal != null) {
      return modal(this);
    }
    return orElse();
  }
}

abstract class Modal<T> extends SearchCardState<T> {
  const factory Modal() = _$ModalImpl<T>;
  const Modal._() : super._();
}

/// @nodoc
abstract class _$$ContryChosenImplCopyWith<T, $Res> {
  factory _$$ContryChosenImplCopyWith(_$ContryChosenImpl<T> value,
          $Res Function(_$ContryChosenImpl<T>) then) =
      __$$ContryChosenImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ContryChosenImplCopyWithImpl<T, $Res>
    extends _$SearchCardStateCopyWithImpl<T, $Res, _$ContryChosenImpl<T>>
    implements _$$ContryChosenImplCopyWith<T, $Res> {
  __$$ContryChosenImplCopyWithImpl(
      _$ContryChosenImpl<T> _value, $Res Function(_$ContryChosenImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContryChosenImpl<T> extends ContryChosen<T> {
  const _$ContryChosenImpl() : super._();

  @override
  String toString() {
    return 'SearchCardState<$T>.contryChosen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContryChosenImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modal,
    required TResult Function() contryChosen,
    required TResult Function() none,
  }) {
    return contryChosen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? modal,
    TResult? Function()? contryChosen,
    TResult? Function()? none,
  }) {
    return contryChosen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modal,
    TResult Function()? contryChosen,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (contryChosen != null) {
      return contryChosen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Modal<T> value) modal,
    required TResult Function(ContryChosen<T> value) contryChosen,
    required TResult Function(None<T> value) none,
  }) {
    return contryChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Modal<T> value)? modal,
    TResult? Function(ContryChosen<T> value)? contryChosen,
    TResult? Function(None<T> value)? none,
  }) {
    return contryChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Modal<T> value)? modal,
    TResult Function(ContryChosen<T> value)? contryChosen,
    TResult Function(None<T> value)? none,
    required TResult orElse(),
  }) {
    if (contryChosen != null) {
      return contryChosen(this);
    }
    return orElse();
  }
}

abstract class ContryChosen<T> extends SearchCardState<T> {
  const factory ContryChosen() = _$ContryChosenImpl<T>;
  const ContryChosen._() : super._();
}

/// @nodoc
abstract class _$$NoneImplCopyWith<T, $Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl<T> value, $Res Function(_$NoneImpl<T>) then) =
      __$$NoneImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<T, $Res>
    extends _$SearchCardStateCopyWithImpl<T, $Res, _$NoneImpl<T>>
    implements _$$NoneImplCopyWith<T, $Res> {
  __$$NoneImplCopyWithImpl(
      _$NoneImpl<T> _value, $Res Function(_$NoneImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl<T> extends None<T> {
  const _$NoneImpl() : super._();

  @override
  String toString() {
    return 'SearchCardState<$T>.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() modal,
    required TResult Function() contryChosen,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? modal,
    TResult? Function()? contryChosen,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? modal,
    TResult Function()? contryChosen,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Modal<T> value) modal,
    required TResult Function(ContryChosen<T> value) contryChosen,
    required TResult Function(None<T> value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Modal<T> value)? modal,
    TResult? Function(ContryChosen<T> value)? contryChosen,
    TResult? Function(None<T> value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Modal<T> value)? modal,
    TResult Function(ContryChosen<T> value)? contryChosen,
    TResult Function(None<T> value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None<T> extends SearchCardState<T> {
  const factory None() = _$NoneImpl<T>;
  const None._() : super._();
}
