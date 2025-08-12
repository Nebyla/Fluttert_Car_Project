part of 'car_bloc.dart';

@freezed
class CarEvent with _$CarEvent {
  const factory CarEvent.fetchCars() = _FetchCars;

  const factory CarEvent.addCar({
    required String name,
    required String motor,
    required int mileage,
  }) = _AddCar;

  const factory CarEvent.deleteCar({
    required int id,
  }) = _DeleteCar;

  const factory CarEvent.searchCar({
    String? query,
  }) = _SearchCar;

  const factory CarEvent.updateCar({
    required int id,
    required String name,
    required String motor,
    required int mileage,
  }) = _UpdateCar;
}