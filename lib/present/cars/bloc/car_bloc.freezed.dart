// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCars,
    required TResult Function(String name, String motor, int mileage) addCar,
    required TResult Function(int id) deleteCar,
    required TResult Function(String? query) searchCar,
    required TResult Function(int id, String name, String motor, int mileage)
        updateCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCars,
    TResult? Function(String name, String motor, int mileage)? addCar,
    TResult? Function(int id)? deleteCar,
    TResult? Function(String? query)? searchCar,
    TResult? Function(int id, String name, String motor, int mileage)?
        updateCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCars,
    TResult Function(String name, String motor, int mileage)? addCar,
    TResult Function(int id)? deleteCar,
    TResult Function(String? query)? searchCar,
    TResult Function(int id, String name, String motor, int mileage)? updateCar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCars value) fetchCars,
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_SearchCar value) searchCar,
    required TResult Function(_UpdateCar value) updateCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCars value)? fetchCars,
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_SearchCar value)? searchCar,
    TResult? Function(_UpdateCar value)? updateCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCars value)? fetchCars,
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_SearchCar value)? searchCar,
    TResult Function(_UpdateCar value)? updateCar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarEventCopyWith<$Res> {
  factory $CarEventCopyWith(CarEvent value, $Res Function(CarEvent) then) =
      _$CarEventCopyWithImpl<$Res, CarEvent>;
}

/// @nodoc
class _$CarEventCopyWithImpl<$Res, $Val extends CarEvent>
    implements $CarEventCopyWith<$Res> {
  _$CarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchCarsImplCopyWith<$Res> {
  factory _$$FetchCarsImplCopyWith(
          _$FetchCarsImpl value, $Res Function(_$FetchCarsImpl) then) =
      __$$FetchCarsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCarsImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$FetchCarsImpl>
    implements _$$FetchCarsImplCopyWith<$Res> {
  __$$FetchCarsImplCopyWithImpl(
      _$FetchCarsImpl _value, $Res Function(_$FetchCarsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchCarsImpl implements _FetchCars {
  const _$FetchCarsImpl();

  @override
  String toString() {
    return 'CarEvent.fetchCars()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCarsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCars,
    required TResult Function(String name, String motor, int mileage) addCar,
    required TResult Function(int id) deleteCar,
    required TResult Function(String? query) searchCar,
    required TResult Function(int id, String name, String motor, int mileage)
        updateCar,
  }) {
    return fetchCars();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCars,
    TResult? Function(String name, String motor, int mileage)? addCar,
    TResult? Function(int id)? deleteCar,
    TResult? Function(String? query)? searchCar,
    TResult? Function(int id, String name, String motor, int mileage)?
        updateCar,
  }) {
    return fetchCars?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCars,
    TResult Function(String name, String motor, int mileage)? addCar,
    TResult Function(int id)? deleteCar,
    TResult Function(String? query)? searchCar,
    TResult Function(int id, String name, String motor, int mileage)? updateCar,
    required TResult orElse(),
  }) {
    if (fetchCars != null) {
      return fetchCars();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCars value) fetchCars,
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_SearchCar value) searchCar,
    required TResult Function(_UpdateCar value) updateCar,
  }) {
    return fetchCars(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCars value)? fetchCars,
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_SearchCar value)? searchCar,
    TResult? Function(_UpdateCar value)? updateCar,
  }) {
    return fetchCars?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCars value)? fetchCars,
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_SearchCar value)? searchCar,
    TResult Function(_UpdateCar value)? updateCar,
    required TResult orElse(),
  }) {
    if (fetchCars != null) {
      return fetchCars(this);
    }
    return orElse();
  }
}

abstract class _FetchCars implements CarEvent {
  const factory _FetchCars() = _$FetchCarsImpl;
}

/// @nodoc
abstract class _$$AddCarImplCopyWith<$Res> {
  factory _$$AddCarImplCopyWith(
          _$AddCarImpl value, $Res Function(_$AddCarImpl) then) =
      __$$AddCarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String motor, int mileage});
}

/// @nodoc
class __$$AddCarImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$AddCarImpl>
    implements _$$AddCarImplCopyWith<$Res> {
  __$$AddCarImplCopyWithImpl(
      _$AddCarImpl _value, $Res Function(_$AddCarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? motor = null,
    Object? mileage = null,
  }) {
    return _then(_$AddCarImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      motor: null == motor
          ? _value.motor
          : motor // ignore: cast_nullable_to_non_nullable
              as String,
      mileage: null == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddCarImpl implements _AddCar {
  const _$AddCarImpl(
      {required this.name, required this.motor, required this.mileage});

  @override
  final String name;
  @override
  final String motor;
  @override
  final int mileage;

  @override
  String toString() {
    return 'CarEvent.addCar(name: $name, motor: $motor, mileage: $mileage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCarImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.motor, motor) || other.motor == motor) &&
            (identical(other.mileage, mileage) || other.mileage == mileage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, motor, mileage);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCarImplCopyWith<_$AddCarImpl> get copyWith =>
      __$$AddCarImplCopyWithImpl<_$AddCarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCars,
    required TResult Function(String name, String motor, int mileage) addCar,
    required TResult Function(int id) deleteCar,
    required TResult Function(String? query) searchCar,
    required TResult Function(int id, String name, String motor, int mileage)
        updateCar,
  }) {
    return addCar(name, motor, mileage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCars,
    TResult? Function(String name, String motor, int mileage)? addCar,
    TResult? Function(int id)? deleteCar,
    TResult? Function(String? query)? searchCar,
    TResult? Function(int id, String name, String motor, int mileage)?
        updateCar,
  }) {
    return addCar?.call(name, motor, mileage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCars,
    TResult Function(String name, String motor, int mileage)? addCar,
    TResult Function(int id)? deleteCar,
    TResult Function(String? query)? searchCar,
    TResult Function(int id, String name, String motor, int mileage)? updateCar,
    required TResult orElse(),
  }) {
    if (addCar != null) {
      return addCar(name, motor, mileage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCars value) fetchCars,
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_SearchCar value) searchCar,
    required TResult Function(_UpdateCar value) updateCar,
  }) {
    return addCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCars value)? fetchCars,
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_SearchCar value)? searchCar,
    TResult? Function(_UpdateCar value)? updateCar,
  }) {
    return addCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCars value)? fetchCars,
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_SearchCar value)? searchCar,
    TResult Function(_UpdateCar value)? updateCar,
    required TResult orElse(),
  }) {
    if (addCar != null) {
      return addCar(this);
    }
    return orElse();
  }
}

abstract class _AddCar implements CarEvent {
  const factory _AddCar(
      {required final String name,
      required final String motor,
      required final int mileage}) = _$AddCarImpl;

  String get name;
  String get motor;
  int get mileage;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCarImplCopyWith<_$AddCarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCarImplCopyWith<$Res> {
  factory _$$DeleteCarImplCopyWith(
          _$DeleteCarImpl value, $Res Function(_$DeleteCarImpl) then) =
      __$$DeleteCarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteCarImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$DeleteCarImpl>
    implements _$$DeleteCarImplCopyWith<$Res> {
  __$$DeleteCarImplCopyWithImpl(
      _$DeleteCarImpl _value, $Res Function(_$DeleteCarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCarImpl implements _DeleteCar {
  const _$DeleteCarImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CarEvent.deleteCar(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCarImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCarImplCopyWith<_$DeleteCarImpl> get copyWith =>
      __$$DeleteCarImplCopyWithImpl<_$DeleteCarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCars,
    required TResult Function(String name, String motor, int mileage) addCar,
    required TResult Function(int id) deleteCar,
    required TResult Function(String? query) searchCar,
    required TResult Function(int id, String name, String motor, int mileage)
        updateCar,
  }) {
    return deleteCar(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCars,
    TResult? Function(String name, String motor, int mileage)? addCar,
    TResult? Function(int id)? deleteCar,
    TResult? Function(String? query)? searchCar,
    TResult? Function(int id, String name, String motor, int mileage)?
        updateCar,
  }) {
    return deleteCar?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCars,
    TResult Function(String name, String motor, int mileage)? addCar,
    TResult Function(int id)? deleteCar,
    TResult Function(String? query)? searchCar,
    TResult Function(int id, String name, String motor, int mileage)? updateCar,
    required TResult orElse(),
  }) {
    if (deleteCar != null) {
      return deleteCar(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCars value) fetchCars,
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_SearchCar value) searchCar,
    required TResult Function(_UpdateCar value) updateCar,
  }) {
    return deleteCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCars value)? fetchCars,
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_SearchCar value)? searchCar,
    TResult? Function(_UpdateCar value)? updateCar,
  }) {
    return deleteCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCars value)? fetchCars,
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_SearchCar value)? searchCar,
    TResult Function(_UpdateCar value)? updateCar,
    required TResult orElse(),
  }) {
    if (deleteCar != null) {
      return deleteCar(this);
    }
    return orElse();
  }
}

abstract class _DeleteCar implements CarEvent {
  const factory _DeleteCar({required final int id}) = _$DeleteCarImpl;

  int get id;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCarImplCopyWith<_$DeleteCarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCarImplCopyWith<$Res> {
  factory _$$SearchCarImplCopyWith(
          _$SearchCarImpl value, $Res Function(_$SearchCarImpl) then) =
      __$$SearchCarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$SearchCarImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$SearchCarImpl>
    implements _$$SearchCarImplCopyWith<$Res> {
  __$$SearchCarImplCopyWithImpl(
      _$SearchCarImpl _value, $Res Function(_$SearchCarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchCarImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchCarImpl implements _SearchCar {
  const _$SearchCarImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'CarEvent.searchCar(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCarImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCarImplCopyWith<_$SearchCarImpl> get copyWith =>
      __$$SearchCarImplCopyWithImpl<_$SearchCarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCars,
    required TResult Function(String name, String motor, int mileage) addCar,
    required TResult Function(int id) deleteCar,
    required TResult Function(String? query) searchCar,
    required TResult Function(int id, String name, String motor, int mileage)
        updateCar,
  }) {
    return searchCar(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCars,
    TResult? Function(String name, String motor, int mileage)? addCar,
    TResult? Function(int id)? deleteCar,
    TResult? Function(String? query)? searchCar,
    TResult? Function(int id, String name, String motor, int mileage)?
        updateCar,
  }) {
    return searchCar?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCars,
    TResult Function(String name, String motor, int mileage)? addCar,
    TResult Function(int id)? deleteCar,
    TResult Function(String? query)? searchCar,
    TResult Function(int id, String name, String motor, int mileage)? updateCar,
    required TResult orElse(),
  }) {
    if (searchCar != null) {
      return searchCar(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCars value) fetchCars,
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_SearchCar value) searchCar,
    required TResult Function(_UpdateCar value) updateCar,
  }) {
    return searchCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCars value)? fetchCars,
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_SearchCar value)? searchCar,
    TResult? Function(_UpdateCar value)? updateCar,
  }) {
    return searchCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCars value)? fetchCars,
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_SearchCar value)? searchCar,
    TResult Function(_UpdateCar value)? updateCar,
    required TResult orElse(),
  }) {
    if (searchCar != null) {
      return searchCar(this);
    }
    return orElse();
  }
}

abstract class _SearchCar implements CarEvent {
  const factory _SearchCar({final String? query}) = _$SearchCarImpl;

  String? get query;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCarImplCopyWith<_$SearchCarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCarImplCopyWith<$Res> {
  factory _$$UpdateCarImplCopyWith(
          _$UpdateCarImpl value, $Res Function(_$UpdateCarImpl) then) =
      __$$UpdateCarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name, String motor, int mileage});
}

/// @nodoc
class __$$UpdateCarImplCopyWithImpl<$Res>
    extends _$CarEventCopyWithImpl<$Res, _$UpdateCarImpl>
    implements _$$UpdateCarImplCopyWith<$Res> {
  __$$UpdateCarImplCopyWithImpl(
      _$UpdateCarImpl _value, $Res Function(_$UpdateCarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? motor = null,
    Object? mileage = null,
  }) {
    return _then(_$UpdateCarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      motor: null == motor
          ? _value.motor
          : motor // ignore: cast_nullable_to_non_nullable
              as String,
      mileage: null == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCarImpl implements _UpdateCar {
  const _$UpdateCarImpl(
      {required this.id,
      required this.name,
      required this.motor,
      required this.mileage});

  @override
  final int id;
  @override
  final String name;
  @override
  final String motor;
  @override
  final int mileage;

  @override
  String toString() {
    return 'CarEvent.updateCar(id: $id, name: $name, motor: $motor, mileage: $mileage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.motor, motor) || other.motor == motor) &&
            (identical(other.mileage, mileage) || other.mileage == mileage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, motor, mileage);

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCarImplCopyWith<_$UpdateCarImpl> get copyWith =>
      __$$UpdateCarImplCopyWithImpl<_$UpdateCarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCars,
    required TResult Function(String name, String motor, int mileage) addCar,
    required TResult Function(int id) deleteCar,
    required TResult Function(String? query) searchCar,
    required TResult Function(int id, String name, String motor, int mileage)
        updateCar,
  }) {
    return updateCar(id, name, motor, mileage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCars,
    TResult? Function(String name, String motor, int mileage)? addCar,
    TResult? Function(int id)? deleteCar,
    TResult? Function(String? query)? searchCar,
    TResult? Function(int id, String name, String motor, int mileage)?
        updateCar,
  }) {
    return updateCar?.call(id, name, motor, mileage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCars,
    TResult Function(String name, String motor, int mileage)? addCar,
    TResult Function(int id)? deleteCar,
    TResult Function(String? query)? searchCar,
    TResult Function(int id, String name, String motor, int mileage)? updateCar,
    required TResult orElse(),
  }) {
    if (updateCar != null) {
      return updateCar(id, name, motor, mileage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCars value) fetchCars,
    required TResult Function(_AddCar value) addCar,
    required TResult Function(_DeleteCar value) deleteCar,
    required TResult Function(_SearchCar value) searchCar,
    required TResult Function(_UpdateCar value) updateCar,
  }) {
    return updateCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCars value)? fetchCars,
    TResult? Function(_AddCar value)? addCar,
    TResult? Function(_DeleteCar value)? deleteCar,
    TResult? Function(_SearchCar value)? searchCar,
    TResult? Function(_UpdateCar value)? updateCar,
  }) {
    return updateCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCars value)? fetchCars,
    TResult Function(_AddCar value)? addCar,
    TResult Function(_DeleteCar value)? deleteCar,
    TResult Function(_SearchCar value)? searchCar,
    TResult Function(_UpdateCar value)? updateCar,
    required TResult orElse(),
  }) {
    if (updateCar != null) {
      return updateCar(this);
    }
    return orElse();
  }
}

abstract class _UpdateCar implements CarEvent {
  const factory _UpdateCar(
      {required final int id,
      required final String name,
      required final String motor,
      required final int mileage}) = _$UpdateCarImpl;

  int get id;
  String get name;
  String get motor;
  int get mileage;

  /// Create a copy of CarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCarImplCopyWith<_$UpdateCarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarState {
  List<Car> get cars => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Car> cars) idle,
    required TResult Function(List<Car> cars) successLoading,
    required TResult Function(List<Car> cars) loading,
    required TResult Function(List<Car> cars, Object? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Car> cars)? idle,
    TResult? Function(List<Car> cars)? successLoading,
    TResult? Function(List<Car> cars)? loading,
    TResult? Function(List<Car> cars, Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Car> cars)? idle,
    TResult Function(List<Car> cars)? successLoading,
    TResult Function(List<Car> cars)? loading,
    TResult Function(List<Car> cars, Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CarStateIdle value) idle,
    required TResult Function(_CarStateSuccessLoading value) successLoading,
    required TResult Function(_CarStateLoading value) loading,
    required TResult Function(_CarStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CarStateIdle value)? idle,
    TResult? Function(_CarStateSuccessLoading value)? successLoading,
    TResult? Function(_CarStateLoading value)? loading,
    TResult? Function(_CarStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CarStateIdle value)? idle,
    TResult Function(_CarStateSuccessLoading value)? successLoading,
    TResult Function(_CarStateLoading value)? loading,
    TResult Function(_CarStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarStateCopyWith<CarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarStateCopyWith<$Res> {
  factory $CarStateCopyWith(CarState value, $Res Function(CarState) then) =
      _$CarStateCopyWithImpl<$Res, CarState>;
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class _$CarStateCopyWithImpl<$Res, $Val extends CarState>
    implements $CarStateCopyWith<$Res> {
  _$CarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarStateIdleImplCopyWith<$Res>
    implements $CarStateCopyWith<$Res> {
  factory _$$CarStateIdleImplCopyWith(
          _$CarStateIdleImpl value, $Res Function(_$CarStateIdleImpl) then) =
      __$$CarStateIdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$CarStateIdleImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$CarStateIdleImpl>
    implements _$$CarStateIdleImplCopyWith<$Res> {
  __$$CarStateIdleImplCopyWithImpl(
      _$CarStateIdleImpl _value, $Res Function(_$CarStateIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$CarStateIdleImpl(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc

class _$CarStateIdleImpl extends _CarStateIdle {
  const _$CarStateIdleImpl({final List<Car> cars = const <Car>[]})
      : _cars = cars,
        super._();

  final List<Car> _cars;
  @override
  @JsonKey()
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarState.idle(cars: $cars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarStateIdleImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarStateIdleImplCopyWith<_$CarStateIdleImpl> get copyWith =>
      __$$CarStateIdleImplCopyWithImpl<_$CarStateIdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Car> cars) idle,
    required TResult Function(List<Car> cars) successLoading,
    required TResult Function(List<Car> cars) loading,
    required TResult Function(List<Car> cars, Object? error) error,
  }) {
    return idle(cars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Car> cars)? idle,
    TResult? Function(List<Car> cars)? successLoading,
    TResult? Function(List<Car> cars)? loading,
    TResult? Function(List<Car> cars, Object? error)? error,
  }) {
    return idle?.call(cars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Car> cars)? idle,
    TResult Function(List<Car> cars)? successLoading,
    TResult Function(List<Car> cars)? loading,
    TResult Function(List<Car> cars, Object? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(cars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CarStateIdle value) idle,
    required TResult Function(_CarStateSuccessLoading value) successLoading,
    required TResult Function(_CarStateLoading value) loading,
    required TResult Function(_CarStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CarStateIdle value)? idle,
    TResult? Function(_CarStateSuccessLoading value)? successLoading,
    TResult? Function(_CarStateLoading value)? loading,
    TResult? Function(_CarStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CarStateIdle value)? idle,
    TResult Function(_CarStateSuccessLoading value)? successLoading,
    TResult Function(_CarStateLoading value)? loading,
    TResult Function(_CarStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _CarStateIdle extends CarState {
  const factory _CarStateIdle({final List<Car> cars}) = _$CarStateIdleImpl;
  const _CarStateIdle._() : super._();

  @override
  List<Car> get cars;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarStateIdleImplCopyWith<_$CarStateIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CarStateSuccessLoadingImplCopyWith<$Res>
    implements $CarStateCopyWith<$Res> {
  factory _$$CarStateSuccessLoadingImplCopyWith(
          _$CarStateSuccessLoadingImpl value,
          $Res Function(_$CarStateSuccessLoadingImpl) then) =
      __$$CarStateSuccessLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$CarStateSuccessLoadingImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$CarStateSuccessLoadingImpl>
    implements _$$CarStateSuccessLoadingImplCopyWith<$Res> {
  __$$CarStateSuccessLoadingImplCopyWithImpl(
      _$CarStateSuccessLoadingImpl _value,
      $Res Function(_$CarStateSuccessLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$CarStateSuccessLoadingImpl(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc

class _$CarStateSuccessLoadingImpl extends _CarStateSuccessLoading {
  const _$CarStateSuccessLoadingImpl({required final List<Car> cars})
      : _cars = cars,
        super._();

  final List<Car> _cars;
  @override
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarState.successLoading(cars: $cars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarStateSuccessLoadingImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarStateSuccessLoadingImplCopyWith<_$CarStateSuccessLoadingImpl>
      get copyWith => __$$CarStateSuccessLoadingImplCopyWithImpl<
          _$CarStateSuccessLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Car> cars) idle,
    required TResult Function(List<Car> cars) successLoading,
    required TResult Function(List<Car> cars) loading,
    required TResult Function(List<Car> cars, Object? error) error,
  }) {
    return successLoading(cars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Car> cars)? idle,
    TResult? Function(List<Car> cars)? successLoading,
    TResult? Function(List<Car> cars)? loading,
    TResult? Function(List<Car> cars, Object? error)? error,
  }) {
    return successLoading?.call(cars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Car> cars)? idle,
    TResult Function(List<Car> cars)? successLoading,
    TResult Function(List<Car> cars)? loading,
    TResult Function(List<Car> cars, Object? error)? error,
    required TResult orElse(),
  }) {
    if (successLoading != null) {
      return successLoading(cars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CarStateIdle value) idle,
    required TResult Function(_CarStateSuccessLoading value) successLoading,
    required TResult Function(_CarStateLoading value) loading,
    required TResult Function(_CarStateError value) error,
  }) {
    return successLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CarStateIdle value)? idle,
    TResult? Function(_CarStateSuccessLoading value)? successLoading,
    TResult? Function(_CarStateLoading value)? loading,
    TResult? Function(_CarStateError value)? error,
  }) {
    return successLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CarStateIdle value)? idle,
    TResult Function(_CarStateSuccessLoading value)? successLoading,
    TResult Function(_CarStateLoading value)? loading,
    TResult Function(_CarStateError value)? error,
    required TResult orElse(),
  }) {
    if (successLoading != null) {
      return successLoading(this);
    }
    return orElse();
  }
}

abstract class _CarStateSuccessLoading extends CarState {
  const factory _CarStateSuccessLoading({required final List<Car> cars}) =
      _$CarStateSuccessLoadingImpl;
  const _CarStateSuccessLoading._() : super._();

  @override
  List<Car> get cars;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarStateSuccessLoadingImplCopyWith<_$CarStateSuccessLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CarStateLoadingImplCopyWith<$Res>
    implements $CarStateCopyWith<$Res> {
  factory _$$CarStateLoadingImplCopyWith(_$CarStateLoadingImpl value,
          $Res Function(_$CarStateLoadingImpl) then) =
      __$$CarStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$CarStateLoadingImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$CarStateLoadingImpl>
    implements _$$CarStateLoadingImplCopyWith<$Res> {
  __$$CarStateLoadingImplCopyWithImpl(
      _$CarStateLoadingImpl _value, $Res Function(_$CarStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$CarStateLoadingImpl(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc

class _$CarStateLoadingImpl extends _CarStateLoading {
  const _$CarStateLoadingImpl({final List<Car> cars = const <Car>[]})
      : _cars = cars,
        super._();

  final List<Car> _cars;
  @override
  @JsonKey()
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarState.loading(cars: $cars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarStateLoadingImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarStateLoadingImplCopyWith<_$CarStateLoadingImpl> get copyWith =>
      __$$CarStateLoadingImplCopyWithImpl<_$CarStateLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Car> cars) idle,
    required TResult Function(List<Car> cars) successLoading,
    required TResult Function(List<Car> cars) loading,
    required TResult Function(List<Car> cars, Object? error) error,
  }) {
    return loading(cars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Car> cars)? idle,
    TResult? Function(List<Car> cars)? successLoading,
    TResult? Function(List<Car> cars)? loading,
    TResult? Function(List<Car> cars, Object? error)? error,
  }) {
    return loading?.call(cars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Car> cars)? idle,
    TResult Function(List<Car> cars)? successLoading,
    TResult Function(List<Car> cars)? loading,
    TResult Function(List<Car> cars, Object? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(cars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CarStateIdle value) idle,
    required TResult Function(_CarStateSuccessLoading value) successLoading,
    required TResult Function(_CarStateLoading value) loading,
    required TResult Function(_CarStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CarStateIdle value)? idle,
    TResult? Function(_CarStateSuccessLoading value)? successLoading,
    TResult? Function(_CarStateLoading value)? loading,
    TResult? Function(_CarStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CarStateIdle value)? idle,
    TResult Function(_CarStateSuccessLoading value)? successLoading,
    TResult Function(_CarStateLoading value)? loading,
    TResult Function(_CarStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CarStateLoading extends CarState {
  const factory _CarStateLoading({final List<Car> cars}) =
      _$CarStateLoadingImpl;
  const _CarStateLoading._() : super._();

  @override
  List<Car> get cars;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarStateLoadingImplCopyWith<_$CarStateLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CarStateErrorImplCopyWith<$Res>
    implements $CarStateCopyWith<$Res> {
  factory _$$CarStateErrorImplCopyWith(
          _$CarStateErrorImpl value, $Res Function(_$CarStateErrorImpl) then) =
      __$$CarStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars, Object? error});
}

/// @nodoc
class __$$CarStateErrorImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$CarStateErrorImpl>
    implements _$$CarStateErrorImplCopyWith<$Res> {
  __$$CarStateErrorImplCopyWithImpl(
      _$CarStateErrorImpl _value, $Res Function(_$CarStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
    Object? error = freezed,
  }) {
    return _then(_$CarStateErrorImpl(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$CarStateErrorImpl extends _CarStateError {
  const _$CarStateErrorImpl({final List<Car> cars = const <Car>[], this.error})
      : _cars = cars,
        super._();

  final List<Car> _cars;
  @override
  @JsonKey()
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'CarState.error(cars: $cars, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarStateErrorImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cars),
      const DeepCollectionEquality().hash(error));

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarStateErrorImplCopyWith<_$CarStateErrorImpl> get copyWith =>
      __$$CarStateErrorImplCopyWithImpl<_$CarStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Car> cars) idle,
    required TResult Function(List<Car> cars) successLoading,
    required TResult Function(List<Car> cars) loading,
    required TResult Function(List<Car> cars, Object? error) error,
  }) {
    return error(cars, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Car> cars)? idle,
    TResult? Function(List<Car> cars)? successLoading,
    TResult? Function(List<Car> cars)? loading,
    TResult? Function(List<Car> cars, Object? error)? error,
  }) {
    return error?.call(cars, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Car> cars)? idle,
    TResult Function(List<Car> cars)? successLoading,
    TResult Function(List<Car> cars)? loading,
    TResult Function(List<Car> cars, Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(cars, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CarStateIdle value) idle,
    required TResult Function(_CarStateSuccessLoading value) successLoading,
    required TResult Function(_CarStateLoading value) loading,
    required TResult Function(_CarStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CarStateIdle value)? idle,
    TResult? Function(_CarStateSuccessLoading value)? successLoading,
    TResult? Function(_CarStateLoading value)? loading,
    TResult? Function(_CarStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CarStateIdle value)? idle,
    TResult Function(_CarStateSuccessLoading value)? successLoading,
    TResult Function(_CarStateLoading value)? loading,
    TResult Function(_CarStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CarStateError extends CarState {
  const factory _CarStateError({final List<Car> cars, final Object? error}) =
      _$CarStateErrorImpl;
  const _CarStateError._() : super._();

  @override
  List<Car> get cars;
  Object? get error;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarStateErrorImplCopyWith<_$CarStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
