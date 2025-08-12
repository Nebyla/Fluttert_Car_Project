part of 'car_bloc.dart';

@freezed
class CarState with _$CarState {
  const CarState._();

  const factory CarState.idle({
    @Default(<Car>[]) List<Car> cars,
  }) = _CarStateIdle;

  const factory CarState.successLoading({
    required List<Car> cars,
  }) = _CarStateSuccessLoading;

  const factory CarState.loading({
    @Default(<Car>[]) List<Car> cars,
  }) = _CarStateLoading;

  const factory CarState.error({
    @Default(<Car>[]) List<Car> cars,
    Object? error,
  }) = _CarStateError;
}