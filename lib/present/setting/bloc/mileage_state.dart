part of 'mileage_bloc.dart';

@freezed
class MileageState with _$MileageState {
  const factory MileageState.initial() = _MileageInitial;
  const factory MileageState.loading() = _MileageLoading;
  const factory MileageState.loaded({required int currentMileage}) = _MileageLoaded;
  const factory MileageState.error({Object? error}) = _MileageError;
}
