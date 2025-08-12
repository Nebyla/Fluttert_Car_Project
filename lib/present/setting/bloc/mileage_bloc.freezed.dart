// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mileage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MileageEvent {
  int get carId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int carId) loadMileage,
    required TResult Function(int carId, int by) increaseMileage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int carId)? loadMileage,
    TResult? Function(int carId, int by)? increaseMileage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int carId)? loadMileage,
    TResult Function(int carId, int by)? increaseMileage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMileage value) loadMileage,
    required TResult Function(_IncreaseMileage value) increaseMileage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMileage value)? loadMileage,
    TResult? Function(_IncreaseMileage value)? increaseMileage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMileage value)? loadMileage,
    TResult Function(_IncreaseMileage value)? increaseMileage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MileageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MileageEventCopyWith<MileageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MileageEventCopyWith<$Res> {
  factory $MileageEventCopyWith(
          MileageEvent value, $Res Function(MileageEvent) then) =
      _$MileageEventCopyWithImpl<$Res, MileageEvent>;
  @useResult
  $Res call({int carId});
}

/// @nodoc
class _$MileageEventCopyWithImpl<$Res, $Val extends MileageEvent>
    implements $MileageEventCopyWith<$Res> {
  _$MileageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MileageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = null,
  }) {
    return _then(_value.copyWith(
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadMileageImplCopyWith<$Res>
    implements $MileageEventCopyWith<$Res> {
  factory _$$LoadMileageImplCopyWith(
          _$LoadMileageImpl value, $Res Function(_$LoadMileageImpl) then) =
      __$$LoadMileageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int carId});
}

/// @nodoc
class __$$LoadMileageImplCopyWithImpl<$Res>
    extends _$MileageEventCopyWithImpl<$Res, _$LoadMileageImpl>
    implements _$$LoadMileageImplCopyWith<$Res> {
  __$$LoadMileageImplCopyWithImpl(
      _$LoadMileageImpl _value, $Res Function(_$LoadMileageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MileageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = null,
  }) {
    return _then(_$LoadMileageImpl(
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadMileageImpl implements _LoadMileage {
  const _$LoadMileageImpl({required this.carId});

  @override
  final int carId;

  @override
  String toString() {
    return 'MileageEvent.loadMileage(carId: $carId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMileageImpl &&
            (identical(other.carId, carId) || other.carId == carId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carId);

  /// Create a copy of MileageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMileageImplCopyWith<_$LoadMileageImpl> get copyWith =>
      __$$LoadMileageImplCopyWithImpl<_$LoadMileageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int carId) loadMileage,
    required TResult Function(int carId, int by) increaseMileage,
  }) {
    return loadMileage(carId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int carId)? loadMileage,
    TResult? Function(int carId, int by)? increaseMileage,
  }) {
    return loadMileage?.call(carId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int carId)? loadMileage,
    TResult Function(int carId, int by)? increaseMileage,
    required TResult orElse(),
  }) {
    if (loadMileage != null) {
      return loadMileage(carId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMileage value) loadMileage,
    required TResult Function(_IncreaseMileage value) increaseMileage,
  }) {
    return loadMileage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMileage value)? loadMileage,
    TResult? Function(_IncreaseMileage value)? increaseMileage,
  }) {
    return loadMileage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMileage value)? loadMileage,
    TResult Function(_IncreaseMileage value)? increaseMileage,
    required TResult orElse(),
  }) {
    if (loadMileage != null) {
      return loadMileage(this);
    }
    return orElse();
  }
}

abstract class _LoadMileage implements MileageEvent {
  const factory _LoadMileage({required final int carId}) = _$LoadMileageImpl;

  @override
  int get carId;

  /// Create a copy of MileageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMileageImplCopyWith<_$LoadMileageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncreaseMileageImplCopyWith<$Res>
    implements $MileageEventCopyWith<$Res> {
  factory _$$IncreaseMileageImplCopyWith(_$IncreaseMileageImpl value,
          $Res Function(_$IncreaseMileageImpl) then) =
      __$$IncreaseMileageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int carId, int by});
}

/// @nodoc
class __$$IncreaseMileageImplCopyWithImpl<$Res>
    extends _$MileageEventCopyWithImpl<$Res, _$IncreaseMileageImpl>
    implements _$$IncreaseMileageImplCopyWith<$Res> {
  __$$IncreaseMileageImplCopyWithImpl(
      _$IncreaseMileageImpl _value, $Res Function(_$IncreaseMileageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MileageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = null,
    Object? by = null,
  }) {
    return _then(_$IncreaseMileageImpl(
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      by: null == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncreaseMileageImpl implements _IncreaseMileage {
  const _$IncreaseMileageImpl({required this.carId, required this.by});

  @override
  final int carId;
  @override
  final int by;

  @override
  String toString() {
    return 'MileageEvent.increaseMileage(carId: $carId, by: $by)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncreaseMileageImpl &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.by, by) || other.by == by));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carId, by);

  /// Create a copy of MileageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncreaseMileageImplCopyWith<_$IncreaseMileageImpl> get copyWith =>
      __$$IncreaseMileageImplCopyWithImpl<_$IncreaseMileageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int carId) loadMileage,
    required TResult Function(int carId, int by) increaseMileage,
  }) {
    return increaseMileage(carId, by);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int carId)? loadMileage,
    TResult? Function(int carId, int by)? increaseMileage,
  }) {
    return increaseMileage?.call(carId, by);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int carId)? loadMileage,
    TResult Function(int carId, int by)? increaseMileage,
    required TResult orElse(),
  }) {
    if (increaseMileage != null) {
      return increaseMileage(carId, by);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMileage value) loadMileage,
    required TResult Function(_IncreaseMileage value) increaseMileage,
  }) {
    return increaseMileage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMileage value)? loadMileage,
    TResult? Function(_IncreaseMileage value)? increaseMileage,
  }) {
    return increaseMileage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMileage value)? loadMileage,
    TResult Function(_IncreaseMileage value)? increaseMileage,
    required TResult orElse(),
  }) {
    if (increaseMileage != null) {
      return increaseMileage(this);
    }
    return orElse();
  }
}

abstract class _IncreaseMileage implements MileageEvent {
  const factory _IncreaseMileage(
      {required final int carId,
      required final int by}) = _$IncreaseMileageImpl;

  @override
  int get carId;
  int get by;

  /// Create a copy of MileageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncreaseMileageImplCopyWith<_$IncreaseMileageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MileageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int currentMileage) loaded,
    required TResult Function(Object? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int currentMileage)? loaded,
    TResult? Function(Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int currentMileage)? loaded,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MileageInitial value) initial,
    required TResult Function(_MileageLoading value) loading,
    required TResult Function(_MileageLoaded value) loaded,
    required TResult Function(_MileageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MileageInitial value)? initial,
    TResult? Function(_MileageLoading value)? loading,
    TResult? Function(_MileageLoaded value)? loaded,
    TResult? Function(_MileageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MileageInitial value)? initial,
    TResult Function(_MileageLoading value)? loading,
    TResult Function(_MileageLoaded value)? loaded,
    TResult Function(_MileageError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MileageStateCopyWith<$Res> {
  factory $MileageStateCopyWith(
          MileageState value, $Res Function(MileageState) then) =
      _$MileageStateCopyWithImpl<$Res, MileageState>;
}

/// @nodoc
class _$MileageStateCopyWithImpl<$Res, $Val extends MileageState>
    implements $MileageStateCopyWith<$Res> {
  _$MileageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MileageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MileageInitialImplCopyWith<$Res> {
  factory _$$MileageInitialImplCopyWith(_$MileageInitialImpl value,
          $Res Function(_$MileageInitialImpl) then) =
      __$$MileageInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MileageInitialImplCopyWithImpl<$Res>
    extends _$MileageStateCopyWithImpl<$Res, _$MileageInitialImpl>
    implements _$$MileageInitialImplCopyWith<$Res> {
  __$$MileageInitialImplCopyWithImpl(
      _$MileageInitialImpl _value, $Res Function(_$MileageInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MileageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MileageInitialImpl implements _MileageInitial {
  const _$MileageInitialImpl();

  @override
  String toString() {
    return 'MileageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MileageInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int currentMileage) loaded,
    required TResult Function(Object? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int currentMileage)? loaded,
    TResult? Function(Object? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int currentMileage)? loaded,
    TResult Function(Object? error)? error,
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
    required TResult Function(_MileageInitial value) initial,
    required TResult Function(_MileageLoading value) loading,
    required TResult Function(_MileageLoaded value) loaded,
    required TResult Function(_MileageError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MileageInitial value)? initial,
    TResult? Function(_MileageLoading value)? loading,
    TResult? Function(_MileageLoaded value)? loaded,
    TResult? Function(_MileageError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MileageInitial value)? initial,
    TResult Function(_MileageLoading value)? loading,
    TResult Function(_MileageLoaded value)? loaded,
    TResult Function(_MileageError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MileageInitial implements MileageState {
  const factory _MileageInitial() = _$MileageInitialImpl;
}

/// @nodoc
abstract class _$$MileageLoadingImplCopyWith<$Res> {
  factory _$$MileageLoadingImplCopyWith(_$MileageLoadingImpl value,
          $Res Function(_$MileageLoadingImpl) then) =
      __$$MileageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MileageLoadingImplCopyWithImpl<$Res>
    extends _$MileageStateCopyWithImpl<$Res, _$MileageLoadingImpl>
    implements _$$MileageLoadingImplCopyWith<$Res> {
  __$$MileageLoadingImplCopyWithImpl(
      _$MileageLoadingImpl _value, $Res Function(_$MileageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MileageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MileageLoadingImpl implements _MileageLoading {
  const _$MileageLoadingImpl();

  @override
  String toString() {
    return 'MileageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MileageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int currentMileage) loaded,
    required TResult Function(Object? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int currentMileage)? loaded,
    TResult? Function(Object? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int currentMileage)? loaded,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MileageInitial value) initial,
    required TResult Function(_MileageLoading value) loading,
    required TResult Function(_MileageLoaded value) loaded,
    required TResult Function(_MileageError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MileageInitial value)? initial,
    TResult? Function(_MileageLoading value)? loading,
    TResult? Function(_MileageLoaded value)? loaded,
    TResult? Function(_MileageError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MileageInitial value)? initial,
    TResult Function(_MileageLoading value)? loading,
    TResult Function(_MileageLoaded value)? loaded,
    TResult Function(_MileageError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MileageLoading implements MileageState {
  const factory _MileageLoading() = _$MileageLoadingImpl;
}

/// @nodoc
abstract class _$$MileageLoadedImplCopyWith<$Res> {
  factory _$$MileageLoadedImplCopyWith(
          _$MileageLoadedImpl value, $Res Function(_$MileageLoadedImpl) then) =
      __$$MileageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentMileage});
}

/// @nodoc
class __$$MileageLoadedImplCopyWithImpl<$Res>
    extends _$MileageStateCopyWithImpl<$Res, _$MileageLoadedImpl>
    implements _$$MileageLoadedImplCopyWith<$Res> {
  __$$MileageLoadedImplCopyWithImpl(
      _$MileageLoadedImpl _value, $Res Function(_$MileageLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MileageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMileage = null,
  }) {
    return _then(_$MileageLoadedImpl(
      currentMileage: null == currentMileage
          ? _value.currentMileage
          : currentMileage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MileageLoadedImpl implements _MileageLoaded {
  const _$MileageLoadedImpl({required this.currentMileage});

  @override
  final int currentMileage;

  @override
  String toString() {
    return 'MileageState.loaded(currentMileage: $currentMileage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MileageLoadedImpl &&
            (identical(other.currentMileage, currentMileage) ||
                other.currentMileage == currentMileage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentMileage);

  /// Create a copy of MileageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MileageLoadedImplCopyWith<_$MileageLoadedImpl> get copyWith =>
      __$$MileageLoadedImplCopyWithImpl<_$MileageLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int currentMileage) loaded,
    required TResult Function(Object? error) error,
  }) {
    return loaded(currentMileage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int currentMileage)? loaded,
    TResult? Function(Object? error)? error,
  }) {
    return loaded?.call(currentMileage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int currentMileage)? loaded,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentMileage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MileageInitial value) initial,
    required TResult Function(_MileageLoading value) loading,
    required TResult Function(_MileageLoaded value) loaded,
    required TResult Function(_MileageError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MileageInitial value)? initial,
    TResult? Function(_MileageLoading value)? loading,
    TResult? Function(_MileageLoaded value)? loaded,
    TResult? Function(_MileageError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MileageInitial value)? initial,
    TResult Function(_MileageLoading value)? loading,
    TResult Function(_MileageLoaded value)? loaded,
    TResult Function(_MileageError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _MileageLoaded implements MileageState {
  const factory _MileageLoaded({required final int currentMileage}) =
      _$MileageLoadedImpl;

  int get currentMileage;

  /// Create a copy of MileageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MileageLoadedImplCopyWith<_$MileageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MileageErrorImplCopyWith<$Res> {
  factory _$$MileageErrorImplCopyWith(
          _$MileageErrorImpl value, $Res Function(_$MileageErrorImpl) then) =
      __$$MileageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$MileageErrorImplCopyWithImpl<$Res>
    extends _$MileageStateCopyWithImpl<$Res, _$MileageErrorImpl>
    implements _$$MileageErrorImplCopyWith<$Res> {
  __$$MileageErrorImplCopyWithImpl(
      _$MileageErrorImpl _value, $Res Function(_$MileageErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MileageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$MileageErrorImpl(
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$MileageErrorImpl implements _MileageError {
  const _$MileageErrorImpl({this.error});

  @override
  final Object? error;

  @override
  String toString() {
    return 'MileageState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MileageErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of MileageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MileageErrorImplCopyWith<_$MileageErrorImpl> get copyWith =>
      __$$MileageErrorImplCopyWithImpl<_$MileageErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int currentMileage) loaded,
    required TResult Function(Object? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int currentMileage)? loaded,
    TResult? Function(Object? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int currentMileage)? loaded,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MileageInitial value) initial,
    required TResult Function(_MileageLoading value) loading,
    required TResult Function(_MileageLoaded value) loaded,
    required TResult Function(_MileageError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MileageInitial value)? initial,
    TResult? Function(_MileageLoading value)? loading,
    TResult? Function(_MileageLoaded value)? loaded,
    TResult? Function(_MileageError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MileageInitial value)? initial,
    TResult Function(_MileageLoading value)? loading,
    TResult Function(_MileageLoaded value)? loaded,
    TResult Function(_MileageError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MileageError implements MileageState {
  const factory _MileageError({final Object? error}) = _$MileageErrorImpl;

  Object? get error;

  /// Create a copy of MileageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MileageErrorImplCopyWith<_$MileageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
