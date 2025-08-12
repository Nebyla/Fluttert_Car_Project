part of 'carpart_bloc.dart';

@freezed
class PartsEvent with _$PartsEvent {
  const factory PartsEvent.loadParts({required int carId}) = _LoadParts;

  const factory PartsEvent.addPart({
    required int carId,
    required String detailDescription,
    required int price,
    String? imagePath,
  }) = _AddPart;

  const factory PartsEvent.deletePart({
    required int partId,
    required int carId,
  }) = _DeletePart;
}