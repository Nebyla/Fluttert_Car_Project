part of 'mileage_bloc.dart';

@freezed
class MileageEvent with _$MileageEvent {
  const factory MileageEvent.loadMileage({required int carId}) = _LoadMileage;
  const factory MileageEvent.increaseMileage({required int carId, required int by}) = _IncreaseMileage;
}
