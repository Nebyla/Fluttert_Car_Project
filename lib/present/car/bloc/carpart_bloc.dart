import 'package:bloc/bloc.dart';
import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/drift.dart';

part 'carpart_bloc.freezed.dart';
part 'carpart_event.dart';
part 'carpart_state.dart';

class PartsBloc extends Bloc<PartsEvent, PartsState> {
  final AppDatabase database;

  PartsBloc({required this.database}) : super(const PartsState.idle()) {
    on<_LoadParts>(_loadParts);
    on<_AddPart>(_addPart);
    on<_DeletePart>(_deletePart);
  }

  Future<void> _loadParts(_LoadParts event, Emitter<PartsState> emit) async {
    emit(const PartsState.loading());
    try {
      final parts = await database.getPartsByCarId(event.carId);
      emit(PartsState.successLoading(parts: parts));
    } catch (e) {
      emit(PartsState.error(error: e));
    }
  }

  Future<void> _addPart(_AddPart event, Emitter<PartsState> emit) async {
    try {
      await database.insertPart(
        PartsCompanion.insert(
          carId: event.carId,
          detailDescription: event.detailDescription,
          price: event.price,
          imagePath: event.imagePath != null
              ? drift.Value(event.imagePath!)
              : const drift.Value.absent(),
        ),
      );
      add(PartsEvent.loadParts(carId: event.carId));  // Reload after adding
    } catch (e) {
      emit(PartsState.error(error: e));
    }
  }

  Future<void> _deletePart(_DeletePart event, Emitter<PartsState> emit) async {
    try {
      await database.deletePart(event.partId);
      add(PartsEvent.loadParts(carId: event.carId));  // Reload after deleting
    } catch (e) {
      emit(PartsState.error(error: e));
    }
  }
}