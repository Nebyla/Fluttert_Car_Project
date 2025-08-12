part of 'car_cubit.dart';

class CarState {
  final String carId;
  final String carName;

  CarState({required this.carId, required this.carName});

  factory CarState.initial() {
    return CarState(carId: '', carName: '');
  }
}