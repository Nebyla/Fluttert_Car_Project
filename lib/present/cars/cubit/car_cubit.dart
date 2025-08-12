import 'package:flutter_bloc/flutter_bloc.dart';

part 'car_state.dart';

class CarCubit extends Cubit<CarState> {
  CarCubit() : super(CarState.initial());

  void selectCar(String id, String name) {
    emit(CarState(carId: id, carName: name));
  }

  void clearCar() {
    emit(CarState.initial());
  }
}


