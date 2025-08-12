import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projectcar/present/setting/map/notification_service.dart';
import '../../../data/drift.dart';

part 'mileage_bloc.freezed.dart';
part 'mileage_event.dart';
part 'mileage_state.dart';

class MileageBloc extends Bloc<MileageEvent, MileageState> {
  final AppDatabase database;

  MileageBloc({required this.database}) : super(const MileageState.initial()) {
    on<_LoadMileage>(_onLoadMileage);
    on<_IncreaseMileage>(_onIncreaseMileage); // 👈 добавили
  }

  Future<void> _onLoadMileage(_LoadMileage event, Emitter<MileageState> emit) async {
    emit(const MileageState.loading());
    try {
      final mileage = await database.getCurrentMileage(event.carId);
      emit(MileageState.loaded(currentMileage: mileage));
    } catch (e) {
      emit(MileageState.error(error: e));
    }
  }

  Future<void> _onIncreaseMileage(_IncreaseMileage event, Emitter<MileageState> emit) async {
    try {
      // Получаем текущий пробег
      final oldMileage = await database.getCurrentMileage(event.carId);
      final newMileage = oldMileage + event.by;

      // Обновляем в базе
      await database.updateMileage(event.carId, newMileage);

      emit(MileageState.loaded(currentMileage: newMileage));

      // 🔔 Уведомление при каждом 10 000 км
      if ((newMileage ~/ 10000) > (oldMileage ~/ 10000)) {
        await NotificationService.showNotification(
          title: 'Пора сделать ТО',
          body: 'Пробег: $newMileage км. Заедь в автосервис.',
        );
      }
    } catch (e) {
      emit(MileageState.error(error: e));
    }
  }
}
