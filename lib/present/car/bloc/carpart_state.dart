part of 'carpart_bloc.dart';

@freezed
class PartsState with _$PartsState {
  const PartsState._();

  const factory PartsState.idle({
    @Default([]) List<CarPart> parts,  // ✅ Fixed: Remove <CarPart>
  }) = _PartsStateIdle;

  const factory PartsState.successLoading({
    required List<CarPart> parts,
  }) = _PartsStateSuccessLoading;

  const factory PartsState.loading() = _PartsStateLoading;

  const factory PartsState.error({
    @Default([]) List<CarPart> parts,  // ✅ Fixed: Remove <CarPart>
    Object? error,
  }) = _PartsStateError;
}
