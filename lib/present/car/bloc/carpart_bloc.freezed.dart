// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carpart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartsEvent {
  int get carId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int carId) loadParts,
    required TResult Function(
            int carId, String detailDescription, int price, String? imagePath)
        addPart,
    required TResult Function(int partId, int carId) deletePart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int carId)? loadParts,
    TResult? Function(
            int carId, String detailDescription, int price, String? imagePath)?
        addPart,
    TResult? Function(int partId, int carId)? deletePart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int carId)? loadParts,
    TResult Function(
            int carId, String detailDescription, int price, String? imagePath)?
        addPart,
    TResult Function(int partId, int carId)? deletePart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParts value) loadParts,
    required TResult Function(_AddPart value) addPart,
    required TResult Function(_DeletePart value) deletePart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParts value)? loadParts,
    TResult? Function(_AddPart value)? addPart,
    TResult? Function(_DeletePart value)? deletePart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParts value)? loadParts,
    TResult Function(_AddPart value)? addPart,
    TResult Function(_DeletePart value)? deletePart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PartsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartsEventCopyWith<PartsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartsEventCopyWith<$Res> {
  factory $PartsEventCopyWith(
          PartsEvent value, $Res Function(PartsEvent) then) =
      _$PartsEventCopyWithImpl<$Res, PartsEvent>;
  @useResult
  $Res call({int carId});
}

/// @nodoc
class _$PartsEventCopyWithImpl<$Res, $Val extends PartsEvent>
    implements $PartsEventCopyWith<$Res> {
  _$PartsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartsEvent
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
abstract class _$$LoadPartsImplCopyWith<$Res>
    implements $PartsEventCopyWith<$Res> {
  factory _$$LoadPartsImplCopyWith(
          _$LoadPartsImpl value, $Res Function(_$LoadPartsImpl) then) =
      __$$LoadPartsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int carId});
}

/// @nodoc
class __$$LoadPartsImplCopyWithImpl<$Res>
    extends _$PartsEventCopyWithImpl<$Res, _$LoadPartsImpl>
    implements _$$LoadPartsImplCopyWith<$Res> {
  __$$LoadPartsImplCopyWithImpl(
      _$LoadPartsImpl _value, $Res Function(_$LoadPartsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = null,
  }) {
    return _then(_$LoadPartsImpl(
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadPartsImpl implements _LoadParts {
  const _$LoadPartsImpl({required this.carId});

  @override
  final int carId;

  @override
  String toString() {
    return 'PartsEvent.loadParts(carId: $carId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPartsImpl &&
            (identical(other.carId, carId) || other.carId == carId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carId);

  /// Create a copy of PartsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPartsImplCopyWith<_$LoadPartsImpl> get copyWith =>
      __$$LoadPartsImplCopyWithImpl<_$LoadPartsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int carId) loadParts,
    required TResult Function(
            int carId, String detailDescription, int price, String? imagePath)
        addPart,
    required TResult Function(int partId, int carId) deletePart,
  }) {
    return loadParts(carId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int carId)? loadParts,
    TResult? Function(
            int carId, String detailDescription, int price, String? imagePath)?
        addPart,
    TResult? Function(int partId, int carId)? deletePart,
  }) {
    return loadParts?.call(carId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int carId)? loadParts,
    TResult Function(
            int carId, String detailDescription, int price, String? imagePath)?
        addPart,
    TResult Function(int partId, int carId)? deletePart,
    required TResult orElse(),
  }) {
    if (loadParts != null) {
      return loadParts(carId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParts value) loadParts,
    required TResult Function(_AddPart value) addPart,
    required TResult Function(_DeletePart value) deletePart,
  }) {
    return loadParts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParts value)? loadParts,
    TResult? Function(_AddPart value)? addPart,
    TResult? Function(_DeletePart value)? deletePart,
  }) {
    return loadParts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParts value)? loadParts,
    TResult Function(_AddPart value)? addPart,
    TResult Function(_DeletePart value)? deletePart,
    required TResult orElse(),
  }) {
    if (loadParts != null) {
      return loadParts(this);
    }
    return orElse();
  }
}

abstract class _LoadParts implements PartsEvent {
  const factory _LoadParts({required final int carId}) = _$LoadPartsImpl;

  @override
  int get carId;

  /// Create a copy of PartsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadPartsImplCopyWith<_$LoadPartsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPartImplCopyWith<$Res>
    implements $PartsEventCopyWith<$Res> {
  factory _$$AddPartImplCopyWith(
          _$AddPartImpl value, $Res Function(_$AddPartImpl) then) =
      __$$AddPartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int carId, String detailDescription, int price, String? imagePath});
}

/// @nodoc
class __$$AddPartImplCopyWithImpl<$Res>
    extends _$PartsEventCopyWithImpl<$Res, _$AddPartImpl>
    implements _$$AddPartImplCopyWith<$Res> {
  __$$AddPartImplCopyWithImpl(
      _$AddPartImpl _value, $Res Function(_$AddPartImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carId = null,
    Object? detailDescription = null,
    Object? price = null,
    Object? imagePath = freezed,
  }) {
    return _then(_$AddPartImpl(
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      detailDescription: null == detailDescription
          ? _value.detailDescription
          : detailDescription // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddPartImpl implements _AddPart {
  const _$AddPartImpl(
      {required this.carId,
      required this.detailDescription,
      required this.price,
      this.imagePath});

  @override
  final int carId;
  @override
  final String detailDescription;
  @override
  final int price;
  @override
  final String? imagePath;

  @override
  String toString() {
    return 'PartsEvent.addPart(carId: $carId, detailDescription: $detailDescription, price: $price, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPartImpl &&
            (identical(other.carId, carId) || other.carId == carId) &&
            (identical(other.detailDescription, detailDescription) ||
                other.detailDescription == detailDescription) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, carId, detailDescription, price, imagePath);

  /// Create a copy of PartsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPartImplCopyWith<_$AddPartImpl> get copyWith =>
      __$$AddPartImplCopyWithImpl<_$AddPartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int carId) loadParts,
    required TResult Function(
            int carId, String detailDescription, int price, String? imagePath)
        addPart,
    required TResult Function(int partId, int carId) deletePart,
  }) {
    return addPart(carId, detailDescription, price, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int carId)? loadParts,
    TResult? Function(
            int carId, String detailDescription, int price, String? imagePath)?
        addPart,
    TResult? Function(int partId, int carId)? deletePart,
  }) {
    return addPart?.call(carId, detailDescription, price, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int carId)? loadParts,
    TResult Function(
            int carId, String detailDescription, int price, String? imagePath)?
        addPart,
    TResult Function(int partId, int carId)? deletePart,
    required TResult orElse(),
  }) {
    if (addPart != null) {
      return addPart(carId, detailDescription, price, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParts value) loadParts,
    required TResult Function(_AddPart value) addPart,
    required TResult Function(_DeletePart value) deletePart,
  }) {
    return addPart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParts value)? loadParts,
    TResult? Function(_AddPart value)? addPart,
    TResult? Function(_DeletePart value)? deletePart,
  }) {
    return addPart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParts value)? loadParts,
    TResult Function(_AddPart value)? addPart,
    TResult Function(_DeletePart value)? deletePart,
    required TResult orElse(),
  }) {
    if (addPart != null) {
      return addPart(this);
    }
    return orElse();
  }
}

abstract class _AddPart implements PartsEvent {
  const factory _AddPart(
      {required final int carId,
      required final String detailDescription,
      required final int price,
      final String? imagePath}) = _$AddPartImpl;

  @override
  int get carId;
  String get detailDescription;
  int get price;
  String? get imagePath;

  /// Create a copy of PartsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPartImplCopyWith<_$AddPartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePartImplCopyWith<$Res>
    implements $PartsEventCopyWith<$Res> {
  factory _$$DeletePartImplCopyWith(
          _$DeletePartImpl value, $Res Function(_$DeletePartImpl) then) =
      __$$DeletePartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int partId, int carId});
}

/// @nodoc
class __$$DeletePartImplCopyWithImpl<$Res>
    extends _$PartsEventCopyWithImpl<$Res, _$DeletePartImpl>
    implements _$$DeletePartImplCopyWith<$Res> {
  __$$DeletePartImplCopyWithImpl(
      _$DeletePartImpl _value, $Res Function(_$DeletePartImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partId = null,
    Object? carId = null,
  }) {
    return _then(_$DeletePartImpl(
      partId: null == partId
          ? _value.partId
          : partId // ignore: cast_nullable_to_non_nullable
              as int,
      carId: null == carId
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeletePartImpl implements _DeletePart {
  const _$DeletePartImpl({required this.partId, required this.carId});

  @override
  final int partId;
  @override
  final int carId;

  @override
  String toString() {
    return 'PartsEvent.deletePart(partId: $partId, carId: $carId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePartImpl &&
            (identical(other.partId, partId) || other.partId == partId) &&
            (identical(other.carId, carId) || other.carId == carId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partId, carId);

  /// Create a copy of PartsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePartImplCopyWith<_$DeletePartImpl> get copyWith =>
      __$$DeletePartImplCopyWithImpl<_$DeletePartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int carId) loadParts,
    required TResult Function(
            int carId, String detailDescription, int price, String? imagePath)
        addPart,
    required TResult Function(int partId, int carId) deletePart,
  }) {
    return deletePart(partId, carId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int carId)? loadParts,
    TResult? Function(
            int carId, String detailDescription, int price, String? imagePath)?
        addPart,
    TResult? Function(int partId, int carId)? deletePart,
  }) {
    return deletePart?.call(partId, carId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int carId)? loadParts,
    TResult Function(
            int carId, String detailDescription, int price, String? imagePath)?
        addPart,
    TResult Function(int partId, int carId)? deletePart,
    required TResult orElse(),
  }) {
    if (deletePart != null) {
      return deletePart(partId, carId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParts value) loadParts,
    required TResult Function(_AddPart value) addPart,
    required TResult Function(_DeletePart value) deletePart,
  }) {
    return deletePart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParts value)? loadParts,
    TResult? Function(_AddPart value)? addPart,
    TResult? Function(_DeletePart value)? deletePart,
  }) {
    return deletePart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParts value)? loadParts,
    TResult Function(_AddPart value)? addPart,
    TResult Function(_DeletePart value)? deletePart,
    required TResult orElse(),
  }) {
    if (deletePart != null) {
      return deletePart(this);
    }
    return orElse();
  }
}

abstract class _DeletePart implements PartsEvent {
  const factory _DeletePart(
      {required final int partId, required final int carId}) = _$DeletePartImpl;

  int get partId;
  @override
  int get carId;

  /// Create a copy of PartsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePartImplCopyWith<_$DeletePartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PartsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CarPart> parts) idle,
    required TResult Function(List<CarPart> parts) successLoading,
    required TResult Function() loading,
    required TResult Function(List<CarPart> parts, Object? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CarPart> parts)? idle,
    TResult? Function(List<CarPart> parts)? successLoading,
    TResult? Function()? loading,
    TResult? Function(List<CarPart> parts, Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CarPart> parts)? idle,
    TResult Function(List<CarPart> parts)? successLoading,
    TResult Function()? loading,
    TResult Function(List<CarPart> parts, Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PartsStateIdle value) idle,
    required TResult Function(_PartsStateSuccessLoading value) successLoading,
    required TResult Function(_PartsStateLoading value) loading,
    required TResult Function(_PartsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PartsStateIdle value)? idle,
    TResult? Function(_PartsStateSuccessLoading value)? successLoading,
    TResult? Function(_PartsStateLoading value)? loading,
    TResult? Function(_PartsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PartsStateIdle value)? idle,
    TResult Function(_PartsStateSuccessLoading value)? successLoading,
    TResult Function(_PartsStateLoading value)? loading,
    TResult Function(_PartsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartsStateCopyWith<$Res> {
  factory $PartsStateCopyWith(
          PartsState value, $Res Function(PartsState) then) =
      _$PartsStateCopyWithImpl<$Res, PartsState>;
}

/// @nodoc
class _$PartsStateCopyWithImpl<$Res, $Val extends PartsState>
    implements $PartsStateCopyWith<$Res> {
  _$PartsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PartsStateIdleImplCopyWith<$Res> {
  factory _$$PartsStateIdleImplCopyWith(_$PartsStateIdleImpl value,
          $Res Function(_$PartsStateIdleImpl) then) =
      __$$PartsStateIdleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CarPart> parts});
}

/// @nodoc
class __$$PartsStateIdleImplCopyWithImpl<$Res>
    extends _$PartsStateCopyWithImpl<$Res, _$PartsStateIdleImpl>
    implements _$$PartsStateIdleImplCopyWith<$Res> {
  __$$PartsStateIdleImplCopyWithImpl(
      _$PartsStateIdleImpl _value, $Res Function(_$PartsStateIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = null,
  }) {
    return _then(_$PartsStateIdleImpl(
      parts: null == parts
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<CarPart>,
    ));
  }
}

/// @nodoc

class _$PartsStateIdleImpl extends _PartsStateIdle {
  const _$PartsStateIdleImpl({final List<CarPart> parts = const []})
      : _parts = parts,
        super._();

  final List<CarPart> _parts;
  @override
  @JsonKey()
  List<CarPart> get parts {
    if (_parts is EqualUnmodifiableListView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  String toString() {
    return 'PartsState.idle(parts: $parts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartsStateIdleImpl &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parts));

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartsStateIdleImplCopyWith<_$PartsStateIdleImpl> get copyWith =>
      __$$PartsStateIdleImplCopyWithImpl<_$PartsStateIdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CarPart> parts) idle,
    required TResult Function(List<CarPart> parts) successLoading,
    required TResult Function() loading,
    required TResult Function(List<CarPart> parts, Object? error) error,
  }) {
    return idle(parts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CarPart> parts)? idle,
    TResult? Function(List<CarPart> parts)? successLoading,
    TResult? Function()? loading,
    TResult? Function(List<CarPart> parts, Object? error)? error,
  }) {
    return idle?.call(parts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CarPart> parts)? idle,
    TResult Function(List<CarPart> parts)? successLoading,
    TResult Function()? loading,
    TResult Function(List<CarPart> parts, Object? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(parts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PartsStateIdle value) idle,
    required TResult Function(_PartsStateSuccessLoading value) successLoading,
    required TResult Function(_PartsStateLoading value) loading,
    required TResult Function(_PartsStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PartsStateIdle value)? idle,
    TResult? Function(_PartsStateSuccessLoading value)? successLoading,
    TResult? Function(_PartsStateLoading value)? loading,
    TResult? Function(_PartsStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PartsStateIdle value)? idle,
    TResult Function(_PartsStateSuccessLoading value)? successLoading,
    TResult Function(_PartsStateLoading value)? loading,
    TResult Function(_PartsStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _PartsStateIdle extends PartsState {
  const factory _PartsStateIdle({final List<CarPart> parts}) =
      _$PartsStateIdleImpl;
  const _PartsStateIdle._() : super._();

  List<CarPart> get parts;

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartsStateIdleImplCopyWith<_$PartsStateIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PartsStateSuccessLoadingImplCopyWith<$Res> {
  factory _$$PartsStateSuccessLoadingImplCopyWith(
          _$PartsStateSuccessLoadingImpl value,
          $Res Function(_$PartsStateSuccessLoadingImpl) then) =
      __$$PartsStateSuccessLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CarPart> parts});
}

/// @nodoc
class __$$PartsStateSuccessLoadingImplCopyWithImpl<$Res>
    extends _$PartsStateCopyWithImpl<$Res, _$PartsStateSuccessLoadingImpl>
    implements _$$PartsStateSuccessLoadingImplCopyWith<$Res> {
  __$$PartsStateSuccessLoadingImplCopyWithImpl(
      _$PartsStateSuccessLoadingImpl _value,
      $Res Function(_$PartsStateSuccessLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = null,
  }) {
    return _then(_$PartsStateSuccessLoadingImpl(
      parts: null == parts
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<CarPart>,
    ));
  }
}

/// @nodoc

class _$PartsStateSuccessLoadingImpl extends _PartsStateSuccessLoading {
  const _$PartsStateSuccessLoadingImpl({required final List<CarPart> parts})
      : _parts = parts,
        super._();

  final List<CarPart> _parts;
  @override
  List<CarPart> get parts {
    if (_parts is EqualUnmodifiableListView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  String toString() {
    return 'PartsState.successLoading(parts: $parts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartsStateSuccessLoadingImpl &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parts));

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartsStateSuccessLoadingImplCopyWith<_$PartsStateSuccessLoadingImpl>
      get copyWith => __$$PartsStateSuccessLoadingImplCopyWithImpl<
          _$PartsStateSuccessLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CarPart> parts) idle,
    required TResult Function(List<CarPart> parts) successLoading,
    required TResult Function() loading,
    required TResult Function(List<CarPart> parts, Object? error) error,
  }) {
    return successLoading(parts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CarPart> parts)? idle,
    TResult? Function(List<CarPart> parts)? successLoading,
    TResult? Function()? loading,
    TResult? Function(List<CarPart> parts, Object? error)? error,
  }) {
    return successLoading?.call(parts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CarPart> parts)? idle,
    TResult Function(List<CarPart> parts)? successLoading,
    TResult Function()? loading,
    TResult Function(List<CarPart> parts, Object? error)? error,
    required TResult orElse(),
  }) {
    if (successLoading != null) {
      return successLoading(parts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PartsStateIdle value) idle,
    required TResult Function(_PartsStateSuccessLoading value) successLoading,
    required TResult Function(_PartsStateLoading value) loading,
    required TResult Function(_PartsStateError value) error,
  }) {
    return successLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PartsStateIdle value)? idle,
    TResult? Function(_PartsStateSuccessLoading value)? successLoading,
    TResult? Function(_PartsStateLoading value)? loading,
    TResult? Function(_PartsStateError value)? error,
  }) {
    return successLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PartsStateIdle value)? idle,
    TResult Function(_PartsStateSuccessLoading value)? successLoading,
    TResult Function(_PartsStateLoading value)? loading,
    TResult Function(_PartsStateError value)? error,
    required TResult orElse(),
  }) {
    if (successLoading != null) {
      return successLoading(this);
    }
    return orElse();
  }
}

abstract class _PartsStateSuccessLoading extends PartsState {
  const factory _PartsStateSuccessLoading(
      {required final List<CarPart> parts}) = _$PartsStateSuccessLoadingImpl;
  const _PartsStateSuccessLoading._() : super._();

  List<CarPart> get parts;

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartsStateSuccessLoadingImplCopyWith<_$PartsStateSuccessLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PartsStateLoadingImplCopyWith<$Res> {
  factory _$$PartsStateLoadingImplCopyWith(_$PartsStateLoadingImpl value,
          $Res Function(_$PartsStateLoadingImpl) then) =
      __$$PartsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PartsStateLoadingImplCopyWithImpl<$Res>
    extends _$PartsStateCopyWithImpl<$Res, _$PartsStateLoadingImpl>
    implements _$$PartsStateLoadingImplCopyWith<$Res> {
  __$$PartsStateLoadingImplCopyWithImpl(_$PartsStateLoadingImpl _value,
      $Res Function(_$PartsStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PartsStateLoadingImpl extends _PartsStateLoading {
  const _$PartsStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'PartsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PartsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CarPart> parts) idle,
    required TResult Function(List<CarPart> parts) successLoading,
    required TResult Function() loading,
    required TResult Function(List<CarPart> parts, Object? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CarPart> parts)? idle,
    TResult? Function(List<CarPart> parts)? successLoading,
    TResult? Function()? loading,
    TResult? Function(List<CarPart> parts, Object? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CarPart> parts)? idle,
    TResult Function(List<CarPart> parts)? successLoading,
    TResult Function()? loading,
    TResult Function(List<CarPart> parts, Object? error)? error,
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
    required TResult Function(_PartsStateIdle value) idle,
    required TResult Function(_PartsStateSuccessLoading value) successLoading,
    required TResult Function(_PartsStateLoading value) loading,
    required TResult Function(_PartsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PartsStateIdle value)? idle,
    TResult? Function(_PartsStateSuccessLoading value)? successLoading,
    TResult? Function(_PartsStateLoading value)? loading,
    TResult? Function(_PartsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PartsStateIdle value)? idle,
    TResult Function(_PartsStateSuccessLoading value)? successLoading,
    TResult Function(_PartsStateLoading value)? loading,
    TResult Function(_PartsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PartsStateLoading extends PartsState {
  const factory _PartsStateLoading() = _$PartsStateLoadingImpl;
  const _PartsStateLoading._() : super._();
}

/// @nodoc
abstract class _$$PartsStateErrorImplCopyWith<$Res> {
  factory _$$PartsStateErrorImplCopyWith(_$PartsStateErrorImpl value,
          $Res Function(_$PartsStateErrorImpl) then) =
      __$$PartsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CarPart> parts, Object? error});
}

/// @nodoc
class __$$PartsStateErrorImplCopyWithImpl<$Res>
    extends _$PartsStateCopyWithImpl<$Res, _$PartsStateErrorImpl>
    implements _$$PartsStateErrorImplCopyWith<$Res> {
  __$$PartsStateErrorImplCopyWithImpl(
      _$PartsStateErrorImpl _value, $Res Function(_$PartsStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = null,
    Object? error = freezed,
  }) {
    return _then(_$PartsStateErrorImpl(
      parts: null == parts
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<CarPart>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$PartsStateErrorImpl extends _PartsStateError {
  const _$PartsStateErrorImpl(
      {final List<CarPart> parts = const [], this.error})
      : _parts = parts,
        super._();

  final List<CarPart> _parts;
  @override
  @JsonKey()
  List<CarPart> get parts {
    if (_parts is EqualUnmodifiableListView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

// ✅ Fixed: Remove <CarPart>
  @override
  final Object? error;

  @override
  String toString() {
    return 'PartsState.error(parts: $parts, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartsStateErrorImpl &&
            const DeepCollectionEquality().equals(other._parts, _parts) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_parts),
      const DeepCollectionEquality().hash(error));

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartsStateErrorImplCopyWith<_$PartsStateErrorImpl> get copyWith =>
      __$$PartsStateErrorImplCopyWithImpl<_$PartsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CarPart> parts) idle,
    required TResult Function(List<CarPart> parts) successLoading,
    required TResult Function() loading,
    required TResult Function(List<CarPart> parts, Object? error) error,
  }) {
    return error(parts, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CarPart> parts)? idle,
    TResult? Function(List<CarPart> parts)? successLoading,
    TResult? Function()? loading,
    TResult? Function(List<CarPart> parts, Object? error)? error,
  }) {
    return error?.call(parts, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CarPart> parts)? idle,
    TResult Function(List<CarPart> parts)? successLoading,
    TResult Function()? loading,
    TResult Function(List<CarPart> parts, Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(parts, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PartsStateIdle value) idle,
    required TResult Function(_PartsStateSuccessLoading value) successLoading,
    required TResult Function(_PartsStateLoading value) loading,
    required TResult Function(_PartsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PartsStateIdle value)? idle,
    TResult? Function(_PartsStateSuccessLoading value)? successLoading,
    TResult? Function(_PartsStateLoading value)? loading,
    TResult? Function(_PartsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PartsStateIdle value)? idle,
    TResult Function(_PartsStateSuccessLoading value)? successLoading,
    TResult Function(_PartsStateLoading value)? loading,
    TResult Function(_PartsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PartsStateError extends PartsState {
  const factory _PartsStateError(
      {final List<CarPart> parts, final Object? error}) = _$PartsStateErrorImpl;
  const _PartsStateError._() : super._();

  List<CarPart> get parts; // ✅ Fixed: Remove <CarPart>
  Object? get error;

  /// Create a copy of PartsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartsStateErrorImplCopyWith<_$PartsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
