import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/drift.dart';

part 'car_bloc.freezed.dart';
part 'car_event.dart';
part 'car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final AppDatabase database;

  CarBloc({CarState initialState = const CarState.idle(), required this.database})
      : super(initialState) {
    on<_FetchCars>(_fetchCars);
    on<_AddCar>(_addCar);
    on<_DeleteCar>(_deleteCar);
    on<_SearchCar>(_searchCar);
    on<_UpdateCar>(_updateCar);
  }

  Future<void> _fetchCars(_FetchCars event, Emitter<CarState> emit) async {
    emit(const CarState.loading());
    try {
      final cars = await database.getAllCars();
      emit(CarState.successLoading(cars: cars));
    } catch (e) {
      emit(CarState.error(error: e));
    }
  }

  Future<void> _addCar(_AddCar event, Emitter<CarState> emit) async {
    try {
      await database.insertCar(
        CarsCompanion.insert(
          name: event.name,
          motor: event.motor,
          mileage: event.mileage,
        ),
      );
      add(const CarEvent.fetchCars());
    } catch (e) {
      emit(CarState.error(error: e));
    }
  }
  Future<void> _updateCar(_UpdateCar event, Emitter<CarState> emit) async {
    try {
      await database.updateCar(
        id: event.id,
        name: event.name,
        motor: event.motor,
        mileage: event.mileage,
      );
      // перезагружаем список после успешного апдейта
      add(const CarEvent.fetchCars());
    } catch (e) {
      emit(CarState.error(error: e));
    }
  }

  Future<void> _deleteCar(_DeleteCar event, Emitter<CarState> emit) async {
    try {
      await database.deleteCar(event.id);
      add(const CarEvent.fetchCars());
    } catch (e) {
      emit(CarState.error(error: e));
    }
  }

  Future<void> _searchCar(_SearchCar event, Emitter<CarState> emit) async {
    try {
      if (event.query != null && event.query!.isNotEmpty) {
        List<Car> cars = state.cars;
        List<Car> queryCar = cars.where((c) => c.name.contains(event.query!)).toList();
        emit(CarState.successLoading(cars: queryCar));
      } else {
        add(const CarEvent.fetchCars());
      }
    } catch (e) {
      emit(CarState.error(error: e));
    }
  }
}